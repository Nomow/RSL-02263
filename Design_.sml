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
        type t = RT_s_2.t * RT_s_2.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_2.equ(#1 x, #1 y) andalso 
                             RT_s_2.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_2.toString(#1 x )) ^ "," ^
                             (RT_s_2.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_6 =
    struct
        type t = RT_s_2.t * RT_Text.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_2.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_2.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_7 =
    struct
        type t = RT_s_2.t * RT_Text.t * RT_s_1.t;
        
        fun equ (x:t, y:t) = RT_s_2.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_1.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_2.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_1.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_1.typeToString ()) ^
                              ")";
    end;
    
structure Design =
    struct
        type Person_ = RT_Text.t;
        
        type Family_ = RT_s_1.t;
        
        type Families_ = RT_s_2.t;
        
        type Table_ = RT_s_1.t;
        
        type Plan_ = RT_s_2.t;
        
        fun areRelatives'119A_ (p1'120B_, p2'120F_, fs'1213_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 34)); if (RT_s_2.R_exists (fn (f'1224_:RT_s_1.t) => (RT_s_1.R_mem (p1'120B_, f'1224_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 84)); (RT_s_1.R_mem (p2'120F_, f'1224_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 97)); (RSL.C_not RT_Text.equ) (p1'120B_, p2'120F_)))) (fs'1213_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 11)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 21)); false));
        
        fun isCorrectPlan'14BA_ (pl'152C_, fs'1530_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (20, 31)); let
            val t'153B_ = (RT_s_2.R_choose (fn t'153B_ => true) (pl'152C_)); 
            val p1'1552_ = (RT_s_1.R_choose (fn p1'1552_ => true) (t'153B_)); 
            val p2'156C_ = (RT_s_1.R_choose (fn p2'156C_ => true) (t'153B_))
        in
            not (((areRelatives'119A_) (p1'1552_, p2'156C_, fs'1530_)))
        end);
        
        fun isWellformed'12C6_ fs'1337_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (15, 26)); if RT_Nat.equ (RT_s_2.R_card((fs'1337_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (15, 47)); false) else if RT_Nat.equ (RT_s_2.R_card((fs'1337_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (15, 77)); RT_Nat.R_gt (RT_s_1.R_card((RT_s_2.R_hd((fs'1337_)))), RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (15, 99)); let
            val fx'138B_ = (RT_s_2.R_choose (fn fx'138B_ => true) (fs'1337_)); 
            val fy'13A5_ = (RT_s_2.R_choose (fn fy'13A5_ => (RSL.C_not RT_s_1.equ) (fy'13A5_, fx'138B_)) (fs'1337_))
        in
            ((RT_s_1.equ (RT_s_1.R_inter (fx'138B_, fy'13A5_), RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 53)); ((RSL.C_not RT_s_1.equ) (fx'138B_, RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 65)); (RSL.C_not RT_s_1.equ) (fy'13A5_, RT_s_1.R_fromList []))))
        end));
        
        fun containsFamilyMember'C1E_ (fs'C97_, person'C9B_, table'CA3_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (32, 45)); ((RT_s_1.R_exists (fn (p'CB5_:RT_Text.t) => ((areRelatives'119A_) (person'C9B_, p'CB5_, fs'C97_))) (table'CA3_))));
        
        fun addToPlan'7D5_ (originalFamilies'843_, person'855_, plan'85D_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (21, 51)); if RT_s_2.equ (plan'85D_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (23, 14)); ((addToPlan'7D5_) (originalFamilies'843_, person'855_, RT_s_2.R_union (plan'85D_, RT_s_2.R_fromList ([RT_s_1.R_fromList []]))))) else if ((containsFamilyMember'C1E_) (originalFamilies'843_, person'855_, RT_s_2.R_hd((plan'85D_)))) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (26, 7)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_2.R_hd((plan'85D_))]), ((addToPlan'7D5_) (originalFamilies'843_, person'855_, RT_s_2.R_diff (plan'85D_, RT_s_2.R_fromList ([RT_s_2.R_hd((plan'85D_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (28, 7)); RT_s_2.R_union (RT_s_2.R_diff (plan'85D_, RT_s_2.R_fromList ([RT_s_2.R_hd((plan'85D_))])), RT_s_2.R_fromList ([(RT_s_1.R_union (RT_s_2.R_hd((plan'85D_)), RT_s_1.R_fromList ([person'855_])))]))));
        
        fun recPlan'451_ (originalFamilies'4BD_, fs'4CF_, p'4D3_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (12, 41)); if RT_s_2.equ (fs'4CF_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (13, 13)); p'4D3_) else if RT_s_2.equ (fs'4CF_, RT_s_2.R_diff (RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_fromList []]), fs'4CF_), RT_s_2.R_fromList ([RT_s_2.R_hd((fs'4CF_))]))) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (15, 6)); ((recPlan'451_) (originalFamilies'4BD_, RT_s_2.R_diff (fs'4CF_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'4CF_))])), p'4D3_))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (17, 6)); ((recPlan'451_) (originalFamilies'4BD_, RT_s_2.R_union (RT_s_2.R_diff (fs'4CF_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'4CF_))])), RT_s_2.R_fromList ([RT_s_1.R_diff (RT_s_2.R_hd((fs'4CF_)), RT_s_1.R_fromList ([RT_s_1.R_hd((RT_s_2.R_hd((fs'4CF_))))]))])), ((addToPlan'7D5_) (originalFamilies'4BD_, RT_s_1.R_hd((RT_s_2.R_hd((fs'4CF_)))), p'4D3_))))));
        
        fun plan'325_ fs'38E_ = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (9, 17)); ((recPlan'451_) (fs'38E_, fs'38E_, RT_s_2.R_fromList [])));
        
    end;
    
open Design;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "Design.rsl", (9, 17), (9, 36));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (17, 6), (18, 7));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (15, 6), (16, 10));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (13, 13), (14, 7));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (12, 41), (18, 10));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (28, 7), (29, 9));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (26, 7), (27, 12));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (23, 14), (24, 9));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (21, 51), (29, 12));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (32, 45), (34, 3));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 65), (16, 73));
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
