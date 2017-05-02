## Parse & Viz Bitcoin -- in a fast and distributed way

This is a fast bitcoin parser for bitcoin, for visualization and analysis of the transaction structures.

* Co-author: Peng Wu (pw2393), Danning Sui (ds3516)

Before use this, prepare the bitcoin raw data, in `blkXXXXX.dat` format.

First run
```
./spark_workflow.sh
```

Next run
```
python tx-structure.py
```

Your will see something like below. It's maybe not exactly as this, because it depends on the input file in `spark_workflow.sh`.

<img src="https://github.com/pw2393/btc-parser-spark/blob/master/fig2-0.png" width="250">

Have fun!

-------
For further visualization use, the transaction data are processed into network data (source, weight, target), which is standard input format for various network graph analysis tools. Also since the datasize is huge, we highly recommend well-developed tools like 
  * [Gephi](https://gephi.org)
    + Here is one example of transaction data in one day:
       <img src="https://github.com/pw2393/btc-parser-spark/blob/master/gephi.png" width="500">

  * [Cytoscape](http://www.cytoscape.org)
    + Here is one example of transaction data in one day:
       <img src="https://github.com/pw2393/btc-parser-spark/blob/master/cyto.png" width="500">

  * [Tableau](https://www.tableau.com/)
    + Here is one visualization example of transaction flow map on Tableau: [Let the Bitcoin Flow!](https://public.tableau.com/profile/danning.sui#!/vizhome/LetTheBitcoinFlow/LetTheBitcoinFlow)
    
    + Here is one dynamic illustration:
       <img src="https://github.com/pw2393/btc-parser-spark/blob/master/flow.gif" width="500">

 
