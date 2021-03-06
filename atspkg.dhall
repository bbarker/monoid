let prelude = https://raw.githubusercontent.com/vmchale/atspkg/master/dhall/atspkg-prelude.dhall

in prelude.default //
  { test = 
    [ prelude.bin //
      { src = "test/test.dats"
      , target = "target/monoid"
      }
    ]
  , dependencies = prelude.mapPlainDeps [ "specats" ]
  }
