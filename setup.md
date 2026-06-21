# Setup del Proyecto

## Requisitos Previos

Antes de ejecutar el proyecto asegúrate de tener instalado:

- Python 3.11 o superior
- Git (opcional)
- Jupyter Notebook

Verifica la versión de Python:

```bash
python --version
```

o

```bash
python3 --version
```
---
## Instalación

### Clonar el repositorio

```bash
git clone https://github.com/uimp3/reto_unidad1_edwin_munoz.git
cd reto_unidad1_edwin_munoz
```
---

## Creación del Entorno Virtual

### Windows

```bash
python -m venv venv
venv\Scripts\activate
```

### Linux / macOS

```bash
python3 -m venv venv
source venv/bin/activate
```

Una vez activado el entorno virtual deberías ver `(venv)` al inicio de la terminal.

---

## Instalación de Dependencias

Instala todas las librerías necesarias ejecutando:

```bash
pip install -r requirements.txt
```

Para verificar que la instalación fue exitosa:

```bash
pip list
```

Deberían aparecer, entre otras, las siguientes librerías:

- pandas
- numpy
- sqlalchemy
- jupyter
- notebook

---

## Ejecución de Jupyter Notebook

Inicia Jupyter Notebook con:

```bash
jupyter notebook
```

Se abrirá una ventana del navegador donde podrás acceder a los notebooks del proyecto.

---

## Orden de Ejecución

Para reproducir correctamente el análisis, ejecutar los notebooks en el siguiente orden:

### 1. NumPy

```text
notebooks/01_numpy.ipynb
```

Contiene:

- Exploración inicial del dataset.
- Limpieza básica de registros inconsistentes.
- Conversión a arrays NumPy.
- Producto punto.
- Estadísticas descriptivas.
- Relación con CRISP-DM.

---

### 2. SQL Discovery

```text
notebooks/02_sql_discovery.ipynb
```

Contiene:

- Creación de la base de datos SQLite.
- Carga de datos.
- Ejecución de consultas SQL.
- Análisis de resultados.

Las consultas utilizadas se encuentran documentadas en:

```text
sql/02_sql_discovery.sql
```

---

### 3. Pandas Pipeline

```text
notebooks/03_pandas_pipeline.ipynb
```

Contiene:

- Exploración de calidad de datos.
- Limpieza y transformación.
- Creación de métricas.
- Exportación a SQLite.
- Verificación mediante `read_sql()`.

---

## Base de Datos SQLite

Al ejecutar el notebook de Pandas se genera automáticamente la base de datos:

```text
output/techventas.db
```

La exportación es validada mediante consultas realizadas con:

```python
pd.read_sql()
```

---

## Validación Final

Antes de entregar el proyecto se recomienda ejecutar:

```text
Kernel → Restart & Run All
```

en cada notebook para verificar que todo el código se ejecuta correctamente desde cero y sin dependencias ocultas entre celdas.

---

## Solución de Problemas

### Error: No module named pandas

```bash
pip install pandas
```

### Error: No module named sqlalchemy

```bash
pip install sqlalchemy
```

### Error: No module named notebook

```bash
pip install notebook
```

### Error al abrir Jupyter

Actualizar pip:

```bash
python -m pip install --upgrade pip
```

e instalar nuevamente las dependencias:

```bash
pip install -r requirements.txt
```