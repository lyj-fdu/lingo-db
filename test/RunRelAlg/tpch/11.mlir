//RUN: run-mlir %s %S/../../../resources/data/tpch | FileCheck %s
//CHECK: |                    ps_partkey  |                         value  |
//CHECK: -------------------------------------------------------------------
//CHECK: |                         12098  |                 16227681.2100  |
//CHECK: |                          5134  |                 15709338.5200  |
//CHECK: |                         13334  |                 15023662.4100  |
//CHECK: |                         17052  |                 14351644.2000  |
//CHECK: |                          3452  |                 14070870.1400  |
//CHECK: |                         12552  |                 13332469.1800  |
//CHECK: |                          1084  |                 13170428.2900  |
//CHECK: |                          5797  |                 13038622.7200  |
//CHECK: |                         12633  |                 12892561.6100  |
//CHECK: |                           403  |                 12856217.3400  |
//CHECK: |                          1833  |                 12024581.7200  |
//CHECK: |                          2084  |                 11502875.3600  |
//CHECK: |                         17349  |                 11354213.0500  |
//CHECK: |                         18427  |                 11282385.2400  |
//CHECK: |                          2860  |                 11262529.9500  |
//CHECK: |                         17852  |                 10934711.9300  |
//CHECK: |                          9871  |                 10889253.6800  |
//CHECK: |                         12231  |                 10841131.3900  |
//CHECK: |                          6366  |                 10759786.8100  |
//CHECK: |                         12146  |                 10257362.6600  |
//CHECK: |                          5043  |                 10226395.8800  |
//CHECK: |                         12969  |                 10125777.9300  |
//CHECK: |                          1504  |                 10004397.0800  |
//CHECK: |                         14327  |                  9981697.0800  |
//CHECK: |                           134  |                  9965150.6600  |
//CHECK: |                          6860  |                  9805871.2600  |
//CHECK: |                         10624  |                  9776138.4000  |
//CHECK: |                         15819  |                  9775705.3100  |
//CHECK: |                          3293  |                  9674928.1200  |
//CHECK: |                         19865  |                  9653766.8300  |
//CHECK: |                          8870  |                  9648981.8700  |
//CHECK: |                         15778  |                  9636332.8200  |
//CHECK: |                         12360  |                  9635023.9200  |
//CHECK: |                         14389  |                  9475588.3400  |
//CHECK: |                          3257  |                  9451029.2400  |
//CHECK: |                          9476  |                  9435207.2800  |
//CHECK: |                         19629  |                  9391236.4000  |
//CHECK: |                          7179  |                  9386222.2500  |
//CHECK: |                         15723  |                  9383900.8000  |
//CHECK: |                          4054  |                  9313810.0200  |
//CHECK: |                          2380  |                  9307751.2200  |
//CHECK: |                         19084  |                  9302916.8000  |
//CHECK: |                          4703  |                  9280804.8000  |
//CHECK: |                         18791  |                  9267017.9700  |
//CHECK: |                         19994  |                  9235972.9200  |
//CHECK: |                          9149  |                  9121803.9000  |
//CHECK: |                         15118  |                  9120819.5000  |
//CHECK: |                          6116  |                  9079369.2000  |
//CHECK: |                          7052  |                  9077468.9200  |
//CHECK: |                         14147  |                  9069193.7800  |
//CHECK: |                          7305  |                  9035228.5300  |
//CHECK: |                          9130  |                  9024379.2500  |
//CHECK: |                         16698  |                  8991337.9500  |
//CHECK: |                          1553  |                  8977226.1000  |
//CHECK: |                         16777  |                  8961355.6200  |
//CHECK: |                          1402  |                  8953779.1200  |
//CHECK: |                         18963  |                  8934063.4000  |
//CHECK: |                          8358  |                  8930611.4800  |
//CHECK: |                         17547  |                  8860117.0000  |
//CHECK: |                          5128  |                  8844222.7500  |
//CHECK: |                         17063  |                  8840649.6000  |
//CHECK: |                         15490  |                  8833581.4000  |
//CHECK: |                         14761  |                  8817240.5600  |
//CHECK: |                         19601  |                  8791341.0200  |
//CHECK: |                         16160  |                  8740262.7600  |
//CHECK: |                         13597  |                  8702669.8200  |
//CHECK: |                         13653  |                  8693170.1600  |
//CHECK: |                         16383  |                  8691505.9200  |
//CHECK: |                           325  |                  8667741.2800  |
//CHECK: |                          8879  |                  8667584.3800  |
//CHECK: |                         10564  |                  8667098.2200  |
//CHECK: |                         17429  |                  8661827.9000  |
//CHECK: |                         17403  |                  8643350.3000  |
//CHECK: |                         18294  |                  8616583.4300  |
//CHECK: |                          4181  |                  8592684.6600  |
//CHECK: |                         13008  |                  8567480.6400  |
//CHECK: |                         13211  |                  8537000.0100  |
//CHECK: |                          1884  |                  8532644.3400  |
//CHECK: |                         11101  |                  8530945.3200  |
//CHECK: |                         11562  |                  8528028.5700  |
//CHECK: |                         15878  |                  8523591.8400  |
//CHECK: |                           834  |                  8522135.2700  |
//CHECK: |                          2423  |                  8517902.8500  |
//CHECK: |                         15383  |                  8513433.1100  |
//CHECK: |                         18119  |                  8507611.8000  |
//CHECK: |                          7389  |                  8506099.2000  |
//CHECK: |                          5016  |                  8489784.1500  |
//CHECK: |                         17473  |                  8444766.2400  |
//CHECK: |                          6669  |                  8428618.4600  |
//CHECK: |                           384  |                  8418472.2700  |
//CHECK: |                         12052  |                  8411519.2800  |
//CHECK: |                         17562  |                  8409022.8300  |
//CHECK: |                          8128  |                  8379149.4700  |
//CHECK: |                         13813  |                  8374830.8400  |
//CHECK: |                         12800  |                  8318626.7800  |
//CHECK: |                         10887  |                  8315019.3600  |
//CHECK: |                          1644  |                  8285453.0800  |
//CHECK: |                         16638  |                  8274568.0000  |
//CHECK: |                          1394  |                  8255140.6000  |
//CHECK: |                          7219  |                  8254985.3000  |
//CHECK: |                           ...  |                           ...  |
//CHECK: |                           929  |                  1121383.9200  |
//CHECK: |                         11599  |                  1119307.2700  |
//CHECK: |                          3765  |                  1119093.5000  |
//CHECK: |                         17635  |                  1118420.1600  |
//CHECK: |                          7119  |                  1118285.0800  |
//CHECK: |                         15121  |                  1117715.3400  |
//CHECK: |                         11858  |                  1116963.5400  |
//CHECK: |                         16963  |                  1116929.4500  |
//CHECK: |                         16356  |                  1113648.9800  |
//CHECK: |                          6924  |                  1112198.4000  |
//CHECK: |                         16223  |                  1111257.0000  |
//CHECK: |                         18091  |                  1110043.0200  |
//CHECK: |                         12628  |                  1108954.8000  |
//CHECK: |                         16043  |                  1108831.0500  |
//CHECK: |                          9402  |                  1108290.4800  |
//CHECK: |                           708  |                  1107084.0000  |
//CHECK: |                          4078  |                  1105993.9600  |
//CHECK: |                         17593  |                  1104713.4000  |
//CHECK: |                         12776  |                  1104362.5900  |
//CHECK: |                          7583  |                  1102813.5300  |
//CHECK: |                         14619  |                  1102675.8000  |
//CHECK: |                          8842  |                  1100110.2600  |
//CHECK: |                          4196  |                  1099726.5500  |
//CHECK: |                          2019  |                  1098178.6400  |
//CHECK: |                          6863  |                  1097246.3600  |
//CHECK: |                          6489  |                  1096503.0700  |
//CHECK: |                          2459  |                  1094813.0400  |
//CHECK: |                         11964  |                  1094485.0200  |
//CHECK: |                          3236  |                  1093969.8000  |
//CHECK: |                         17647  |                  1093809.1500  |
//CHECK: |                         17648  |                  1093114.6200  |
//CHECK: |                           119  |                  1092687.4800  |
//CHECK: |                          9626  |                  1092080.0000  |
//CHECK: |                          9124  |                  1091569.6800  |
//CHECK: |                         13175  |                  1089851.7600  |
//CHECK: |                          2532  |                  1088706.3500  |
//CHECK: |                         16083  |                  1088295.3900  |
//CHECK: |                          8874  |                  1086011.3400  |
//CHECK: |                         12872  |                  1082970.3000  |
//CHECK: |                         19821  |                  1082520.8400  |
//CHECK: |                          4800  |                  1080389.7000  |
//CHECK: |                         18696  |                  1079685.3600  |
//CHECK: |                         19545  |                  1079184.3300  |
//CHECK: |                         13120  |                  1077742.2800  |
//CHECK: |                         10588  |                  1076203.8300  |
//CHECK: |                         17696  |                  1075092.7200  |
//CHECK: |                         14651  |                  1073222.2300  |
//CHECK: |                           903  |                  1071146.7600  |
//CHECK: |                          5858  |                  1070259.4800  |
//CHECK: |                          8302  |                  1069504.8000  |
//CHECK: |                         18728  |                  1069225.5100  |
//CHECK: |                         18026  |                  1068569.0000  |
//CHECK: |                         19383  |                  1066907.5800  |
//CHECK: |                         18690  |                  1065930.9000  |
//CHECK: |                          5924  |                  1065143.1200  |
//CHECK: |                          4880  |                  1065011.7500  |
//CHECK: |                         12439  |                  1064381.1900  |
//CHECK: |                         16529  |                  1062371.7000  |
//CHECK: |                         19653  |                  1057683.5600  |
//CHECK: |                          3136  |                  1056810.4400  |
//CHECK: |                         18932  |                  1056193.6500  |
//CHECK: |                          2124  |                  1054160.5200  |
//CHECK: |                         16851  |                  1052646.8400  |
//CHECK: |                         10123  |                  1051624.0000  |
//CHECK: |                          5618  |                  1048447.9300  |
//CHECK: |                         19851  |                  1045187.8500  |
//CHECK: |                         16278  |                  1044808.3800  |
//CHECK: |                         11479  |                  1044276.2200  |
//CHECK: |                         13263  |                  1042046.2000  |
//CHECK: |                          6041  |                  1041123.3800  |
//CHECK: |                          7193  |                  1040455.3200  |
//CHECK: |                         19408  |                  1039430.0100  |
//CHECK: |                         11260  |                  1036828.5200  |
//CHECK: |                          5179  |                  1035633.4400  |
//CHECK: |                          1331  |                  1034398.0000  |
//CHECK: |                          7706  |                  1034249.4000  |
//CHECK: |                          8436  |                  1033549.3500  |
//CHECK: |                          1801  |                  1031886.0000  |
//CHECK: |                          4170  |                  1031642.9000  |
//CHECK: |                         11827  |                  1031139.3900  |
//CHECK: |                         17114  |                  1027985.8800  |
//CHECK: |                         18278  |                  1026583.1100  |
//CHECK: |                          1995  |                  1025165.6800  |
//CHECK: |                          7667  |                  1022980.1500  |
//CHECK: |                          6559  |                  1021635.4500  |
//CHECK: |                         17488  |                  1021612.1300  |
//CHECK: |                         16059  |                  1019781.1900  |
//CHECK: |                          7633  |                  1018782.5700  |
//CHECK: |                         10032  |                  1016809.5000  |
//CHECK: |                          2899  |                  1016438.7600  |
//CHECK: |                         14628  |                  1016033.2000  |
//CHECK: |                         10126  |                  1015846.7800  |
//CHECK: |                          3884  |                  1014413.5000  |
//CHECK: |                         16913  |                  1013604.4000  |
//CHECK: |                         18644  |                  1010288.1000  |
//CHECK: |                         19870  |                  1007919.3600  |
//CHECK: |                         18564  |                  1007416.2000  |
//CHECK: |                         10179  |                  1004920.0000  |
//CHECK: |                           883  |                  1004650.6800  |
//CHECK: |                          3627  |                  1004461.0400  |
module {
  func @main() -> !dsa.table {
    %0 = relalg.basetable @partsupp  {table_identifier = "partsupp"} columns: {ps_availqty => @ps_availqty({type = i32}), ps_comment => @ps_comment({type = !db.string}), ps_partkey => @ps_partkey({type = i32}), ps_suppkey => @ps_suppkey({type = i32}), ps_supplycost => @ps_supplycost({type = !db.decimal<15, 2>})}
    %1 = relalg.basetable @supplier  {table_identifier = "supplier"} columns: {s_acctbal => @s_acctbal({type = !db.decimal<15, 2>}), s_address => @s_address({type = !db.string}), s_comment => @s_comment({type = !db.string}), s_name => @s_name({type = !db.string}), s_nationkey => @s_nationkey({type = i32}), s_phone => @s_phone({type = !db.string}), s_suppkey => @s_suppkey({type = i32})}
    %2 = relalg.crossproduct %0, %1
    %3 = relalg.basetable @nation  {table_identifier = "nation"} columns: {n_comment => @n_comment({type = !db.nullable<!db.string>}), n_name => @n_name({type = !db.string}), n_nationkey => @n_nationkey({type = i32}), n_regionkey => @n_regionkey({type = i32})}
    %4 = relalg.crossproduct %2, %3
    %5 = relalg.selection %4 (%arg0: !relalg.tuple){
      %11 = relalg.getcol %arg0 @partsupp::@ps_suppkey : i32
      %12 = relalg.getcol %arg0 @supplier::@s_suppkey : i32
      %13 = db.compare eq %11 : i32, %12 : i32
      %14 = relalg.getcol %arg0 @supplier::@s_nationkey : i32
      %15 = relalg.getcol %arg0 @nation::@n_nationkey : i32
      %16 = db.compare eq %14 : i32, %15 : i32
      %17 = relalg.getcol %arg0 @nation::@n_name : !db.string
      %18 = db.constant("GERMANY") : !db.string
      %19 = db.compare eq %17 : !db.string, %18 : !db.string
      %20 = db.and %13, %16, %19 : i1, i1, i1
      relalg.return %20 : i1
    }
    %6 = relalg.map @map0 %5 computes : [@tmp_attr3({type = !db.decimal<15, 4>}),@tmp_attr1({type = !db.decimal<15, 4>})] (%arg0: !relalg.tuple){
      %11 = relalg.getcol %arg0 @partsupp::@ps_supplycost : !db.decimal<15, 2>
      %12 = relalg.getcol %arg0 @partsupp::@ps_availqty : i32
      %13 = db.cast %12 : i32 -> !db.decimal<15, 2>
      %14 = db.mul %11 : !db.decimal<15, 2>, %13 : !db.decimal<15, 2>
      %15 = relalg.getcol %arg0 @partsupp::@ps_supplycost : !db.decimal<15, 2>
      %16 = relalg.getcol %arg0 @partsupp::@ps_availqty : i32
      %17 = db.cast %16 : i32 -> !db.decimal<15, 2>
      %18 = db.mul %15 : !db.decimal<15, 2>, %17 : !db.decimal<15, 2>
      relalg.return %14, %18 : !db.decimal<15, 4>, !db.decimal<15, 4>
    }
    %7 = relalg.aggregation @aggr0 %6 [@partsupp::@ps_partkey] computes : [@tmp_attr2({type = !db.decimal<15, 4>}),@tmp_attr0({type = !db.decimal<15, 4>})] (%arg0: !relalg.tuplestream,%arg1: !relalg.tuple){
      %11 = relalg.aggrfn sum @map0::@tmp_attr3 %arg0 : !db.decimal<15, 4>
      %12 = relalg.aggrfn sum @map0::@tmp_attr1 %arg0 : !db.decimal<15, 4>
      relalg.return %11, %12 : !db.decimal<15, 4>, !db.decimal<15, 4>
    }
    %8 = relalg.selection %7 (%arg0: !relalg.tuple){
      %11 = relalg.getcol %arg0 @aggr0::@tmp_attr2 : !db.decimal<15, 4>
      %12 = relalg.basetable @partsupp  {table_identifier = "partsupp"} columns: {ps_availqty => @ps_availqty({type = i32}), ps_comment => @ps_comment({type = !db.string}), ps_partkey => @ps_partkey({type = i32}), ps_suppkey => @ps_suppkey({type = i32}), ps_supplycost => @ps_supplycost({type = !db.decimal<15, 2>})}
      %13 = relalg.basetable @supplier  {table_identifier = "supplier"} columns: {s_acctbal => @s_acctbal({type = !db.decimal<15, 2>}), s_address => @s_address({type = !db.string}), s_comment => @s_comment({type = !db.string}), s_name => @s_name({type = !db.string}), s_nationkey => @s_nationkey({type = i32}), s_phone => @s_phone({type = !db.string}), s_suppkey => @s_suppkey({type = i32})}
      %14 = relalg.crossproduct %12, %13
      %15 = relalg.basetable @nation  {table_identifier = "nation"} columns: {n_comment => @n_comment({type = !db.nullable<!db.string>}), n_name => @n_name({type = !db.string}), n_nationkey => @n_nationkey({type = i32}), n_regionkey => @n_regionkey({type = i32})}
      %16 = relalg.crossproduct %14, %15
      %17 = relalg.selection %16 (%arg1: !relalg.tuple){
        %24 = relalg.getcol %arg1 @partsupp::@ps_suppkey : i32
        %25 = relalg.getcol %arg1 @supplier::@s_suppkey : i32
        %26 = db.compare eq %24 : i32, %25 : i32
        %27 = relalg.getcol %arg1 @supplier::@s_nationkey : i32
        %28 = relalg.getcol %arg1 @nation::@n_nationkey : i32
        %29 = db.compare eq %27 : i32, %28 : i32
        %30 = relalg.getcol %arg1 @nation::@n_name : !db.string
        %31 = db.constant("GERMANY") : !db.string
        %32 = db.compare eq %30 : !db.string, %31 : !db.string
        %33 = db.and %26, %29, %32 : i1, i1, i1
        relalg.return %33 : i1
      }
      %18 = relalg.map @map1 %17 computes : [@tmp_attr5({type = !db.decimal<15, 4>})] (%arg1: !relalg.tuple){
        %24 = relalg.getcol %arg1 @partsupp::@ps_supplycost : !db.decimal<15, 2>
        %25 = relalg.getcol %arg1 @partsupp::@ps_availqty : i32
        %26 = db.cast %25 : i32 -> !db.decimal<15, 2>
        %27 = db.mul %24 : !db.decimal<15, 2>, %26 : !db.decimal<15, 2>
        relalg.return %27 : !db.decimal<15, 4>
      }
      %19 = relalg.aggregation @aggr1 %18 [] computes : [@tmp_attr4({type = !db.nullable<!db.decimal<15, 4>>})] (%arg1: !relalg.tuplestream,%arg2: !relalg.tuple){
        %24 = relalg.aggrfn sum @map1::@tmp_attr5 %arg1 : !db.nullable<!db.decimal<15, 4>>
        relalg.return %24 : !db.nullable<!db.decimal<15, 4>>
      }
      %20 = relalg.map @map2 %19 computes : [@tmp_attr6({type = !db.nullable<!db.decimal<15, 8>>})] (%arg1: !relalg.tuple){
        %24 = relalg.getcol %arg1 @aggr1::@tmp_attr4 : !db.nullable<!db.decimal<15, 4>>
        %25 = db.constant("0.0001") : !db.decimal<5, 4>
        %26 = db.mul %24 : !db.nullable<!db.decimal<15, 4>>, %25 : !db.decimal<5, 4>
        relalg.return %26 : !db.nullable<!db.decimal<15, 8>>
      }
      %21 = relalg.getscalar @map2::@tmp_attr6 %20 : !db.nullable<!db.decimal<15, 8>>
      %22 = db.cast %11 : !db.decimal<15, 4> -> !db.decimal<15, 8>
      %23 = db.compare gt %22 : !db.decimal<15, 8>, %21 : !db.nullable<!db.decimal<15, 8>>
      relalg.return %23 : !db.nullable<i1>
    }
    %9 = relalg.sort %8 [(@aggr0::@tmp_attr0,desc)]
    %10 = relalg.materialize %9 [@partsupp::@ps_partkey,@aggr0::@tmp_attr0] => ["ps_partkey", "value"] : !dsa.table
    return %10 : !dsa.table
  }
}

