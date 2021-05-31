import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)
import pandas as pd
import plotly.express as px
import dash
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output,State
from dash.exceptions import PreventUpdate
import pymysql


miConexion = pymysql.connect( host='mysql', user= 'root', passwd='', db='proyecto' )
cur = miConexion.cursor()


selectedGraph = 0
app = dash.Dash(__name__)

app.layout = html.Div([

    html.H1("Proyecto Final PC2", style={'text-align': 'center'}),
    html.Div(id="state",style = {'display':'none'}),
    dcc.Dropdown(id="grafica_select",
                 options=[
                     {"label": "Grafica 1", "value": 1},
                     {"label": "Grafica 2", "value": 2},
                     {"label": "Grafica 3", "value": 3},
                     {"label": "Grafica 4", "value": 4}],
                 
                 multi=False,
                 style = {'width':'40%'}
                 ),
    dcc.Dropdown(id="other_select",
                 multi=False,
                 style = {'display':'none'}
                 ),
    dcc.Input(
            id="input_bins",
            type="number",
            placeholder="Numero de Bins de Grafica",
            style = {'display':'none'},
            value=20
        ),
    html.Br(),
    dcc.Graph(id='graph', figure={}),
    dcc.Graph(id='graph2', figure={},style={'display':'none'})

])


def grafica1():
    cur.execute( "SELECT `Salario`,`Cargo` FROM `data` WHERE 1" )
    df_salario = pd.DataFrame(cur.fetchall(),columns=["Salario","Cargo"])
    df_salario['Salario'] = df_salario['Salario'].str.replace("$","")
    df_salario['Salario'] = df_salario['Salario'].str.replace(".","")
    df_salario['Salario'] = pd.to_numeric(df_salario['Salario'])
    data = df_salario.groupby(by="Cargo",axis=0).mean().reset_index()
    fig = px.bar(data,x="Cargo", y="Salario",title="Promedio de Salarios por Cargo")
    return fig


def grafica2():
    cur.execute( "SELECT `Salario`,`Facultad` FROM `data` WHERE 1" )
    df_facultad = pd.DataFrame(cur.fetchall(),columns=["Salario","Facultad"])
    df_facultad['Salario'] = df_facultad['Salario'].str.replace("$","")
    df_facultad['Salario'] = df_facultad['Salario'].str.replace(".","")
    df_facultad['Salario'] = pd.to_numeric(df_facultad['Salario'])
    df_facultad = df_facultad.groupby(by="Facultad",axis=0).mean().reset_index()
    fig_facultad = px.bar(df_facultad,x="Facultad", y="Salario",title="Promedio de Salarios por Facultad")
    return fig_facultad

def grafica3(cargo,bins=20):
    cur.execute( "SELECT `Salario`,`Cargo` FROM `data` WHERE 1" )
    df_salario = pd.DataFrame(cur.fetchall(),columns=["Salario","Cargo"])
    df_salario['Salario'] = df_salario['Salario'].str.replace("$","")
    df_salario['Salario'] = df_salario['Salario'].str.replace(".","")
    df_salario['Salario'] = pd.to_numeric(df_salario['Salario'])
    df_salario = df_salario[df_salario["Cargo"] == cargo]
    df_salario = df_salario.sort_values(by=['Salario'])
    fig = px.histogram(df_salario,"Salario",nbins=bins,title="Rango de Precios por Cargo")
    return fig

def grafica4(facultad, bins=20):
    cur.execute( "SELECT `Salario`,`Facultad` FROM `data` WHERE 1" )
    df_facultad = pd.DataFrame(cur.fetchall(),columns=["Salario","Facultad"])
    df_facultad['Salario'] = df_facultad['Salario'].str.replace("$","")
    df_facultad['Salario'] = df_facultad['Salario'].str.replace(".","")
    df_facultad['Salario'] = pd.to_numeric(df_facultad['Salario'])
    df_facultad = df_facultad[df_facultad["Facultad"] == facultad]
    df_facultad = df_facultad.sort_values(by=['Salario'])
    fig2 = px.histogram(df_facultad,"Salario",nbins=bins,title="Rango de Precios por Facultad")
    return fig2

@app.callback(
    [Output(component_id='graph2',component_property='figure'),
    Output(component_id='graph2',component_property='style'),
    Output(component_id='graph',component_property='style')],
    [Input(component_id='other_select', component_property='value'),
    Input(component_id='input_bins', component_property='value')],
    State(component_id='state',component_property='children')
)
def callback3(select,bins,state):
    if(3 == state):
        fig = grafica3(cargo=select,bins=bins)
        return fig, {'display':'block'},{'display':'none'}
    elif (4 == state):
        fig = grafica4(facultad=select,bins=bins)
        return fig, {'display':'block'},{'display':'none'}
    else: 
        return {},{'display':'none'},{'display':'block'}




@app.callback(
    [Output(component_id='graph', component_property='figure'),
    Output(component_id='other_select', component_property='style'),
    Output(component_id='input_bins', component_property='style'),
    Output(component_id='other_select', component_property='options'),
    Output(component_id='state', component_property='children')],
    Input(component_id='grafica_select', component_property='value')
)
def callback1(value):
    style = {'display':'none'}
    options = []
    fig = {}
    

    if (value == 1):
        fig = grafica1()
    if (value == 2):
        fig = grafica2()
    if (value == 3):
        style={'width': "40%",'margin-top':'20px'}
        cur.execute( "SELECT `Salario`,`Cargo` FROM `data` WHERE 1" )
        df_salario = pd.DataFrame(cur.fetchall(),columns=["Salario","Cargo"])
        options = [{"label":cargo, "value": cargo} for cargo in list(df_salario["Cargo"].unique())]
        fig = grafica3(cargo="Administrativo")
    if (value == 4):
        style={'width': "40%",'margin-top':'20px'}
        cur.execute( "SELECT `Salario`,`Facultad` FROM `data` WHERE 1" )
        df_facultad = pd.DataFrame(cur.fetchall(),columns=["Salario","Facultad"])
        options = [{"label": facultad, "value": facultad} for facultad in list(df_facultad["Facultad"].unique())]
        fig = grafica4(facultad="Medicina")
        
    return fig,style,style,options,value



if __name__ == "__main__":
    app.run_server(host="0.0.0.0", debug=False, port=8055)

















