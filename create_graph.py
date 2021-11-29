import plotly.express as px
import pandas as pd  # data processing, CSV file I/O (e.g. pd.read_csv)

inputpath = "datos_grafico_recreados.csv"
df = pd.read_csv(inputpath, sep=";")

print(df)
fig = px.parallel_categories(df, color="color",
                             dimensions=['initial_diagnose', 'final_diagnose'],
                             labels={'initial_diagnose': 'Initial diagnosis',
                                     'final_diagnose': 'Final diagnosis'},
                             color_continuous_scale=px.colors.sequential.Inferno)
fig.show()
