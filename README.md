## Parse Bitcoin -- in a fast and distributed way

This is a fast bitcoin parser for bitcoin, for visualization and analysis of the transaction structures.

Co-author: Peng Wu (pw2393), Danning Sui (ds3516)

Before use this, prepare the bitcoin raw data, in `blkXXXXX.dat` format.

First run
```
./spark_workflow.sh
```

Next run
```
python tx-structure.py
```

Your will see something like below. It may not exactly as this, because it depends on the input file in `spark_workflow.sh`.

![fig2-0.png]()


Have fun.
