structure RT_Text = RT_Text;

structure RT_s_1 = RT_Set(structure Elem = RT_Text);

structure RT_s_2 = RT_Set(structure Elem = RT_s_1);

structure RT_x_3 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_Bool = RT_Bool;

structure RT_x_4 =
    struct
        type t = RT_s_2.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_2.equ(#1 x, #1 y) andalso 
                             RT_s_2.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_2.toString(#1 x )) ^ "," ^
                             (RT_s_2.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure Requirements =
    struct
        type Person_ = RT_Text.t;
        
        type Family_ = RT_s_1.t;
        
        type Families_ = RT_s_2.t;
        
        type Table_ = RT_s_1.t;
        
        type Plan_ = RT_s_2.t;
        
        fun areRelatives'902_ (p1'973_, p2'977_, fs'97B_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 34)); if (RT_s_2.R_exists (fn (f'98C_:RT_s_1.t) => (RT_s_1.R_mem (p1'973_, f'98C_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 84)); (RT_s_1.R_mem (p2'977_, f'98C_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 97)); (RSL.C_not RT_Text.equ) (p1'973_, p2'977_)))) (fs'97B_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 11)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 21)); false));
        
        fun isCorrectPlan'B5A_ (pl'BCC_, fs'BD0_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (18, 31)); let
            val t'BDB_ = (RT_s_2.R_choose (fn t'BDB_ => true) (pl'BCC_)); 
            val p1'BF2_ = (RT_s_1.R_choose (fn p1'BF2_ => true) (t'BDB_)); 
            val p2'C0C_ = (RT_s_1.R_choose (fn p2'C0C_ => true) (t'BDB_))
        in
            not (((areRelatives'902_) (p1'BF2_, p2'C0C_, fs'BD0_)))
        end);
        
        fun isWellformed'A2E_ fs'A9F_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (15, 26)); let
            val fx'AAA_ = (RT_s_2.R_choose (fn fx'AAA_ => true) (fs'A9F_)); 
            val fy'AC4_ = (RT_s_2.R_choose (fn fy'AC4_ => true) (fs'A9F_))
        in
            ((RT_s_1.equ (RT_s_1.R_inter (fx'AAA_, fy'AC4_), RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 5)); (RSL.C_not RT_s_1.equ) (fx'AAA_, fy'AC4_)))
        end);
        
        ;
        
    end;
    
open Requirements;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 5), (16, 12));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (15, 26), (16, 17));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (18, 31), (19, 3));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 97), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 84), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 21), (13, 27));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 11), (13, 19));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 34), (13, 30)));
RSL.print_error_count();
R_coverage.save_marked();
