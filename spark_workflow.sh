#!/bin/sh
files="../../blk00088.dat ../../blk00089.dat"
echo "###### Spark Parsing Workflow Starts... ######"
spark-submit \
  --master local[4] \
  spark_parser.py ../../blk00800.dat &&
# Better Data Storage:
cat csv/inputs_mapping/part* | sed -e '/^ *$/d' > csv/inputs_mapping.csv &&
cat csv/outputs/part* | sed -e '/^ *$/d' > csv/outputs.csv &&
cat csv/transactions/part* | sed -e '/^ *$/d' > csv/transactions.csv &&
rm -r csv/inputs_mapping &&
rm -r csv/outputs &&
rm -r csv/transactions &&
echo "\n###### Step 1 Done ######\n" &&
spark-submit spark_mapinput.py local[*] &&
echo "\n###### Step 2 Done ######\n" &&
spark-submit spark_mapaddr.py local[*] &&
echo "\n###### Parsed Files: ######\n"$files
