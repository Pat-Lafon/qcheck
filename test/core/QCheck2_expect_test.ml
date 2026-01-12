open QCheck2_tests

(* Calling runners *)

let () = QCheck_base_runner.set_verbose true
let () = QCheck_base_runner.set_seed 1234
let () = QCheck_base_runner.set_verbose false
let _ =
  QCheck_base_runner.run_tests ~colors:false (
    Overall.tests @
    Generator.tests @
    Shrink.tests @
    Function.tests @
    FindExample.tests @
    Stats.tests)

let () = QCheck_base_runner.set_verbose true
let () = QCheck_base_runner.set_seed 153870556
let () = QCheck_base_runner.set_verbose false
let _  = QCheck_base_runner.run_tests ~colors:false [Stats.int_dist_empty_bucket]
