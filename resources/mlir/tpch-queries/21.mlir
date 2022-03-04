module {
  func @main() -> !db.table {
    %0 = relalg.basetable @supplier  {table_identifier = "supplier"} columns: {s_acctbal => @s_acctbal({type = !db.decimal<15, 2>}), s_address => @s_address({type = !db.string}), s_comment => @s_comment({type = !db.string}), s_name => @s_name({type = !db.string}), s_nationkey => @s_nationkey({type = i32}), s_phone => @s_phone({type = !db.string}), s_suppkey => @s_suppkey({type = i32})}
    %1 = relalg.basetable @l1  {table_identifier = "lineitem"} columns: {l_comment => @l_comment({type = !db.string}), l_commitdate => @l_commitdate({type = !db.date<day>}), l_discount => @l_discount({type = !db.decimal<15, 2>}), l_extendedprice => @l_extendedprice({type = !db.decimal<15, 2>}), l_linenumber => @l_linenumber({type = i32}), l_linestatus => @l_linestatus({type = !db.char<1>}), l_orderkey => @l_orderkey({type = i32}), l_partkey => @l_partkey({type = i32}), l_quantity => @l_quantity({type = !db.decimal<15, 2>}), l_receiptdate => @l_receiptdate({type = !db.date<day>}), l_returnflag => @l_returnflag({type = !db.char<1>}), l_shipdate => @l_shipdate({type = !db.date<day>}), l_shipinstruct => @l_shipinstruct({type = !db.string}), l_shipmode => @l_shipmode({type = !db.string}), l_suppkey => @l_suppkey({type = i32}), l_tax => @l_tax({type = !db.decimal<15, 2>})}
    %2 = relalg.crossproduct %0, %1
    %3 = relalg.basetable @orders  {table_identifier = "orders"} columns: {o_clerk => @o_clerk({type = !db.string}), o_comment => @o_comment({type = !db.string}), o_custkey => @o_custkey({type = i32}), o_orderdate => @o_orderdate({type = !db.date<day>}), o_orderkey => @o_orderkey({type = i32}), o_orderpriority => @o_orderpriority({type = !db.string}), o_orderstatus => @o_orderstatus({type = !db.char<1>}), o_shippriority => @o_shippriority({type = i32}), o_totalprice => @o_totalprice({type = !db.decimal<15, 2>})}
    %4 = relalg.crossproduct %2, %3
    %5 = relalg.basetable @nation  {table_identifier = "nation"} columns: {n_comment => @n_comment({type = !db.nullable<!db.string>}), n_name => @n_name({type = !db.string}), n_nationkey => @n_nationkey({type = i32}), n_regionkey => @n_regionkey({type = i32})}
    %6 = relalg.crossproduct %4, %5
    %7 = relalg.selection %6 (%arg0: !relalg.tuple){
      %12 = relalg.getattr %arg0 @supplier::@s_suppkey : i32
      %13 = relalg.getattr %arg0 @l1::@l_suppkey : i32
      %14 = db.compare eq %12 : i32, %13 : i32
      %15 = relalg.getattr %arg0 @orders::@o_orderkey : i32
      %16 = relalg.getattr %arg0 @l1::@l_orderkey : i32
      %17 = db.compare eq %15 : i32, %16 : i32
      %18 = relalg.getattr %arg0 @orders::@o_orderstatus : !db.char<1>
      %19 = db.constant("F") : !db.string
      %20 = db.cast %18 : !db.char<1> -> !db.string
      %21 = db.compare eq %20 : !db.string, %19 : !db.string
      %22 = relalg.getattr %arg0 @l1::@l_receiptdate : !db.date<day>
      %23 = relalg.getattr %arg0 @l1::@l_commitdate : !db.date<day>
      %24 = db.compare gt %22 : !db.date<day>, %23 : !db.date<day>
      %25 = relalg.basetable @l2  {table_identifier = "lineitem"} columns: {l_comment => @l_comment({type = !db.string}), l_commitdate => @l_commitdate({type = !db.date<day>}), l_discount => @l_discount({type = !db.decimal<15, 2>}), l_extendedprice => @l_extendedprice({type = !db.decimal<15, 2>}), l_linenumber => @l_linenumber({type = i32}), l_linestatus => @l_linestatus({type = !db.char<1>}), l_orderkey => @l_orderkey({type = i32}), l_partkey => @l_partkey({type = i32}), l_quantity => @l_quantity({type = !db.decimal<15, 2>}), l_receiptdate => @l_receiptdate({type = !db.date<day>}), l_returnflag => @l_returnflag({type = !db.char<1>}), l_shipdate => @l_shipdate({type = !db.date<day>}), l_shipinstruct => @l_shipinstruct({type = !db.string}), l_shipmode => @l_shipmode({type = !db.string}), l_suppkey => @l_suppkey({type = i32}), l_tax => @l_tax({type = !db.decimal<15, 2>})}
      %26 = relalg.selection %25 (%arg1: !relalg.tuple){
        %39 = relalg.getattr %arg1 @l2::@l_orderkey : i32
        %40 = relalg.getattr %arg1 @l1::@l_orderkey : i32
        %41 = db.compare eq %39 : i32, %40 : i32
        %42 = relalg.getattr %arg1 @l2::@l_suppkey : i32
        %43 = relalg.getattr %arg1 @l1::@l_suppkey : i32
        %44 = db.compare neq %42 : i32, %43 : i32
        %45 = db.and %41:i1,%44:i1
        relalg.return %45 : i1
      }
      %27 = relalg.exists %26
      %28 = relalg.basetable @l3  {table_identifier = "lineitem"} columns: {l_comment => @l_comment({type = !db.string}), l_commitdate => @l_commitdate({type = !db.date<day>}), l_discount => @l_discount({type = !db.decimal<15, 2>}), l_extendedprice => @l_extendedprice({type = !db.decimal<15, 2>}), l_linenumber => @l_linenumber({type = i32}), l_linestatus => @l_linestatus({type = !db.char<1>}), l_orderkey => @l_orderkey({type = i32}), l_partkey => @l_partkey({type = i32}), l_quantity => @l_quantity({type = !db.decimal<15, 2>}), l_receiptdate => @l_receiptdate({type = !db.date<day>}), l_returnflag => @l_returnflag({type = !db.char<1>}), l_shipdate => @l_shipdate({type = !db.date<day>}), l_shipinstruct => @l_shipinstruct({type = !db.string}), l_shipmode => @l_shipmode({type = !db.string}), l_suppkey => @l_suppkey({type = i32}), l_tax => @l_tax({type = !db.decimal<15, 2>})}
      %29 = relalg.selection %28 (%arg1: !relalg.tuple){
        %39 = relalg.getattr %arg1 @l3::@l_orderkey : i32
        %40 = relalg.getattr %arg1 @l1::@l_orderkey : i32
        %41 = db.compare eq %39 : i32, %40 : i32
        %42 = relalg.getattr %arg1 @l3::@l_suppkey : i32
        %43 = relalg.getattr %arg1 @l1::@l_suppkey : i32
        %44 = db.compare neq %42 : i32, %43 : i32
        %45 = relalg.getattr %arg1 @l3::@l_receiptdate : !db.date<day>
        %46 = relalg.getattr %arg1 @l3::@l_commitdate : !db.date<day>
        %47 = db.compare gt %45 : !db.date<day>, %46 : !db.date<day>
        %48 = db.and %41:i1,%44:i1,%47:i1
        relalg.return %48 : i1
      }
      %30 = relalg.exists %29
      %31 = db.not %30 : i1
      %32 = relalg.getattr %arg0 @supplier::@s_nationkey : i32
      %33 = relalg.getattr %arg0 @nation::@n_nationkey : i32
      %34 = db.compare eq %32 : i32, %33 : i32
      %35 = relalg.getattr %arg0 @nation::@n_name : !db.string
      %36 = db.constant("SAUDI ARABIA") : !db.string
      %37 = db.compare eq %35 : !db.string, %36 : !db.string
      %38 = db.and %14:i1,%17:i1,%21:i1,%24:i1,%27:i1,%31:i1,%34:i1,%37:i1
      relalg.return %38 : i1
    }
    %8 = relalg.aggregation @aggr0 %7 [@supplier::@s_name] (%arg0: !relalg.tuplestream,%arg1: !relalg.tuple){
      %12 = relalg.count %arg0
      %13 = relalg.addattr %arg1, @tmp_attr0({type = i64}) %12
      relalg.return %13 : !relalg.tuple
    }
    %9 = relalg.sort %8 [(@aggr0::@tmp_attr0,desc),(@supplier::@s_name,asc)]
    %10 = relalg.limit 100 %9
    %11 = relalg.materialize %10 [@supplier::@s_name,@aggr0::@tmp_attr0] => ["s_name", "numwait"] : !db.table
    return %11 : !db.table
  }
}
