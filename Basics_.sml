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
        
        fun sh1'B59_ fs'BC1_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 16)); if RT_Nat.R_gt (RT_s_2.R_card((fs'BC1_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 37)); RT_Nat.R_add (RT_s_1.R_card((RT_s_2.R_hd((fs'BC1_)))), ((sh1'B59_) (RT_s_2.R_diff (fs'BC1_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'BC1_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 76)); RT_Int.fromLit "0"));
        
        fun areRelatives'452_ (p1'4C3_, p2'4C7_, fs'4CB_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 34)); if (RT_s_2.R_exists (fn (f'4DC_:RT_s_1.t) => (RT_s_1.R_mem (p1'4C3_, f'4DC_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 84)); (RT_s_1.R_mem (p2'4C7_, f'4DC_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 97)); (RSL.C_not RT_Text.equ) (p1'4C3_, p2'4C7_)))) (fs'4CB_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 11)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 21)); false));
        
        fun sh'A2D_ fs'A94_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (27, 15)); if RT_Nat.R_gt (RT_s_2.R_card((fs'A94_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (27, 36)); RT_s_1.R_union (RT_s_2.R_hd((fs'A94_)), ((sh'A2D_) (RT_s_2.R_diff (fs'A94_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'A94_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (27, 72)); RT_s_1.R_fromList []));
        
        fun isWellformed'57E_ fs'5EF_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 6)); if RT_s_2.equ (fs'5EF_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 22)); false) else if RT_Nat.equ (RT_s_2.R_card((fs'5EF_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 52)); true) else if RT_s_2.R_mem (RT_s_1.R_fromList [], fs'5EF_) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 79)); false) else if RT_Nat.R_lt (((sh1'B59_) (fs'5EF_)), RT_s_2.R_card((fs'5EF_))) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (17, 15)); false) else if RT_Nat.equ (((sh1'B59_) (fs'5EF_)), RT_s_1.R_card((RT_s_2.R_hd((fs'5EF_))))) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (17, 55)); false) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (17, 11)); RT_Nat.equ (((sh1'B59_) (fs'5EF_)), RT_s_1.R_card((((sh'A2D_) (fs'5EF_)))))));
        
        fun shareMember'89D_ (fx'90D_, fy'910_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (23, 27)); if (RT_s_1.R_exists (fn (p'921_:RT_Text.t) => RT_s_1.R_mem (p'921_, fy'910_)) (fx'90D_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (23, 79)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (23, 89)); false));
        
        fun isCorrectPlan'772_ (pl'7E4_, fs'7E8_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (20, 31)); let
            val t'7F3_ = (RT_s_2.R_choose (fn t'7F3_ => true) (pl'7E4_)); 
            val p1'80A_ = (RT_s_1.R_choose (fn p1'80A_ => true) (t'7F3_)); 
            val p2'824_ = (RT_s_1.R_choose (fn p2'824_ => true) (t'7F3_))
        in
            not (((areRelatives'452_) (p1'80A_, p2'824_, fs'7E8_)))
        end);
        
    end;
    
open Basics;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "Basics.rsl", (20, 31), (21, 41));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (23, 89), (23, 95));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (23, 79), (23, 87));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (23, 27), (23, 98));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (17, 11), (18, 6));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (17, 55), (17, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (17, 15), (17, 25));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 79), (16, 89));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 52), (16, 61));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 22), (16, 28));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 6), (18, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (27, 72), (27, 75));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (27, 36), (27, 70));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (27, 15), (27, 78));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 97), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 84), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 21), (13, 27));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 11), (13, 19));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 34), (13, 30));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (30, 76), (30, 78));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (30, 37), (30, 74));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (30, 16), (34, 3)));
RSL.print_error_count();
R_coverage.save_marked();
