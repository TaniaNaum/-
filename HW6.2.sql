{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "mount_file_id": "1SfyZqdlWO5xisV4gqWDWYmv2JG47h1bF",
      "authorship_tag": "ABX9TyPDEvvlqTGoAw9hD9tl7zD9",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/TaniaNaum/-/blob/main/HW6.2.sql\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "id": "604l6LEx76Cx"
      },
      "outputs": [],
      "source": [
        "Create Table ci\n",
        "  (Id SERIAL PRIMARY key,\n",
        "   Country varchar(40) not null,\n",
        "   City varchar(40) not null,\n",
        "   Latitude NUMERIC,\n",
        "   Longitude NUMERIC,\n",
        "   Altitude NUMERIC\n",
        "  );\n",
        "\n",
        "INSERT INTO ci\n",
        "values\n",
        "(1, 'Afghanistan',\t'Kabul',\t34.5166667,\t69.1833344,\t1808.0),\n",
        "(2,\t'Afghanistan',\t'Kandahar',\t31.6100000,\t65.6999969,\t1015.0),\n",
        "(3,\t'Afghanistan',\t'Mazar-e Sharif',\t36.7069444,\t67.1122208,\t369.0),\n",
        "(4,\t'Afghanistan',\t'Herat',\t34.3400000,\t62.1899986,\t927.0),\n",
        "(5,\t'Afghanistan',\t'Jalalabad',\t34.4200000,\t70.4499969,\t573.0),\n",
        "(6,\t'Afghanistan',\t'Konduz',\t36.7200000,\t68.8600006,\t394.0),\n",
        "(7,\t'Afghanistan',\t'Ghazni',\t33.5535554,\t68.4268875,\t2175.0);\n",
        "\n",
        "INSERT INTO ci\n",
        "VALUES\n",
        "(8,\t'Afghanistan',\t'Nawab City',\t31.5800000,\t64.3600006,\t775.0),\n",
        "(9,\t'Afghanistan',\t'Gereshk',\t31.8188889,\t64.5647202,\t844.0);\n",
        "\n",
        "SELECT * FROM ci;\n",
        "\n",
        "SELECT Country, City, Altitude FROM ci\n",
        "\n",
        "  SELECT COUNT(*) AS ci,\n",
        "       MIN(Latitude) AS MinLatitude,\n",
        "       MAX(Longitude) AS MaxLongitude,\n",
        "  from ci\n",
        "\n",
        "CREATE VIEW cities as\n",
        "SELECT Country, City, Altitude FROM ci;\n",
        "\n",
        "SELECT * FROM ci;"
      ]
    }
  ]
}