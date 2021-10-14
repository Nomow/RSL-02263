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

structure RT_Nat = RT_Nat;

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
    
structure Basics =
    struct
        type Person_ = RT_Text.t;
        
        type Family_ = RT_s_1.t;
        
        type Families_ = RT_s_2.t;
        
        type Table_ = RT_s_1.t;
        
        type Plan_ = RT_s_2.t;
        
        fun areRelatives'452_ (p1'4C3_, p2'4C7_, fs'4CB_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 34)); if (RT_s_2.R_exists (fn (f'4DC_:RT_s_1.t) => (RT_s_1.R_mem (p1'4C3_, f'4DC_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 84)); (RT_s_1.R_mem (p2'4C7_, f'4DC_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 97)); (RSL.C_not RT_Text.equ) (p1'4C3_, p2'4C7_)))) (fs'4CB_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 11)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 21)); false));
        
        fun isCorrectPlan'772_ (pl'7E4_, fs'7E8_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (20, 31)); let
            val t'7F3_ = (RT_s_2.R_choose (fn t'7F3_ => true) (pl'7E4_)); 
            val p1'80A_ = (RT_s_1.R_choose (fn p1'80A_ => true) (t'7F3_)); 
            val p2'824_ = (RT_s_1.R_choose (fn p2'824_ => true) (t'7F3_))
        in
            not (((areRelatives'452_) (p1'80A_, p2'824_, fs'7E8_)))
        end);
        
        fun isWellformed'57E_ fs'5EF_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (15, 26)); if RT_Nat.equ (RT_s_2.R_card((fs'5EF_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (15, 47)); false) else if RT_Nat.equ (RT_s_2.R_card((fs'5EF_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (15, 77)); RT_Nat.R_gt (RT_s_1.R_card((RT_s_2.R_hd((fs'5EF_)))), RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (15, 99)); let
            val fx'643_ = (RT_s_2.R_choose (fn fx'643_ => true) (fs'5EF_)); 
            val fy'65D_ = (RT_s_2.R_choose (fn fy'65D_ => (RSL.C_not RT_s_1.equ) (fy'65D_, fx'643_)) (fs'5EF_))
        in
            ((RT_s_1.equ (RT_s_1.R_inter (fx'643_, fy'65D_), RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 53)); ((RSL.C_not RT_s_1.equ) (fx'643_, RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 65)); (RSL.C_not RT_s_1.equ) (fy'65D_, RT_s_1.R_fromList []))))
        end));
        
    end;
    
open Basics;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 65), (16, 73));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 53), (16, 73));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (15, 99), (17, 11));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (15, 77), (15, 97));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (15, 47), (15, 53));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (15, 26), (17, 14));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (20, 31), (21, 3));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 97), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 84), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 21), (13, 27));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 11), (13, 19));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 34), (13, 30)));
RSL.print_error_count();
R_coverage.save_marked();
