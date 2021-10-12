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
    
structure RT_x_5 =
    struct
        type t = RT_s_1.t * RT_s_1.t;
        
        fun equ (x:t, y:t) = RT_s_1.equ(#1 x, #1 y) andalso 
                             RT_s_1.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_1.toString(#1 x )) ^ "," ^
                             (RT_s_1.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_1.typeToString ()) ^ " >< " ^
                              (RT_s_1.typeToString ()) ^
                              ")";
    end;
    
structure Basics =
    struct
        type Person_ = RT_Text.t;
        
        type Family_ = RT_s_1.t;
        
        type Families_ = RT_s_2.t;
        
        type Table_ = RT_s_1.t;
        
        type Plan_ = RT_s_2.t;
        
        fun sh1'AF5_ fs'B5D_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 16)); if RT_Nat.R_gt (RT_s_2.R_card((fs'B5D_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 37)); RT_Nat.R_add (RT_s_1.R_card((RT_s_2.R_hd((fs'B5D_)))), ((sh1'AF5_) (RT_s_2.R_diff (fs'B5D_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'B5D_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 76)); RT_Int.fromLit "0"));
        
        fun areRelatives'452_ (p1'4C3_, p2'4C7_, fs'4CB_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 34)); if (RT_s_2.R_exists (fn (f'4DC_:RT_s_1.t) => (RT_s_1.R_mem (p1'4C3_, f'4DC_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 84)); (RT_s_1.R_mem (p2'4C7_, f'4DC_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 97)); (RSL.C_not RT_Text.equ) (p1'4C3_, p2'4C7_)))) (fs'4CB_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 11)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 21)); false));
        
        fun sh'9C9_ fs'A30_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (26, 15)); if RT_Nat.R_gt (RT_s_2.R_card((fs'A30_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (26, 36)); RT_s_1.R_union (RT_s_2.R_hd((fs'A30_)), ((sh'9C9_) (RT_s_2.R_diff (fs'A30_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'A30_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (26, 72)); RT_s_1.R_fromList []));
        
        fun isWellformed'57E_ fs'5EF_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 6)); if RT_s_2.equ (fs'5EF_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 22)); false) else if RT_Nat.equ (RT_s_2.R_card((fs'5EF_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 52)); true) else if RT_s_2.R_mem (RT_s_1.R_fromList [], fs'5EF_) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 79)); false) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 90)); RT_Nat.equ (((sh1'AF5_) (fs'5EF_)), RT_s_1.R_card((((sh'9C9_) (fs'5EF_)))))));
        
        fun shareMember'839_ (fx'8A9_, fy'8AC_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (22, 27)); if (RT_s_1.R_exists (fn (p'8BD_:RT_Text.t) => RT_s_1.R_mem (p'8BD_, fy'8AC_)) (fx'8A9_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (22, 79)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (22, 89)); false));
        
        fun isCorrectPlan'70E_ (pl'780_, fs'784_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (19, 31)); let
            val t'78F_ = (RT_s_2.R_choose (fn t'78F_ => true) (pl'780_)); 
            val p1'7A6_ = (RT_s_1.R_choose (fn p1'7A6_ => true) (t'78F_)); 
            val p2'7C0_ = (RT_s_1.R_choose (fn p2'7C0_ => true) (t'78F_))
        in
            not (((areRelatives'452_) (p1'7A6_, p2'7C0_, fs'784_)))
        end);
        
    end;
    
open Basics;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "Basics.rsl", (19, 31), (20, 41));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (22, 89), (22, 95));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (22, 79), (22, 87));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (22, 27), (22, 98));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 90), (17, 6));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 79), (16, 88));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 52), (16, 61));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 22), (16, 28));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 6), (17, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (26, 72), (26, 75));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (26, 36), (26, 70));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (26, 15), (26, 78));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 97), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 84), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 21), (13, 27));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 11), (13, 19));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 34), (13, 30));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 76), (29, 78));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 37), (29, 74));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 16), (32, 3)));
RSL.print_error_count();
R_coverage.save_marked();
