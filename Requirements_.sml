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
    
structure Requirements =
    struct
        type Person_ = RT_Text.t;
        
        type Family_ = RT_s_1.t;
        
        type Families_ = RT_s_2.t;
        
        type Table_ = RT_s_1.t;
        
        type Plan_ = RT_s_2.t;
        
        fun shareMember'F41_ (fx'FB1_, fy'FB4_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 27)); if (RT_s_1.R_exists (fn (p'FC5_:RT_Text.t) => RT_s_1.R_mem (p'FC5_, fy'FB4_)) (fx'FB1_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 79)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 89)); false));
        
        fun areRelatives'89E_ (p1'90F_, p2'913_, fs'917_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 34)); if (RT_s_2.R_exists (fn (f'928_:RT_s_1.t) => (RT_s_1.R_mem (p1'90F_, f'928_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 84)); (RT_s_1.R_mem (p2'913_, f'928_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 97)); (RSL.C_not RT_Text.equ) (p1'90F_, p2'913_)))) (fs'917_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 11)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 21)); false));
        
        fun isCorrectPlan'E16_ (pl'E88_, fs'E8C_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (26, 31)); let
            val t'E97_ = (RT_s_2.R_choose (fn t'E97_ => true) (pl'E88_)); 
            val p1'EAE_ = (RT_s_1.R_choose (fn p1'EAE_ => true) (t'E97_)); 
            val p2'EC8_ = (RT_s_1.R_choose (fn p2'EC8_ => true) (t'E97_))
        in
            not (((areRelatives'89E_) (p1'EAE_, p2'EC8_, fs'E8C_)))
        end);
        
        fun isWellformed'9CA_ fs'A3B_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 6)); if RT_s_2.equ (fs'A3B_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 22)); false) else if RT_Nat.equ (RT_s_2.R_card((fs'A3B_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 52)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (17, 9)); let
            val fx'AFD_ = (RT_s_2.R_choose (fn fx'AFD_ => true) (fs'A3B_)); 
            val fy'B61_ = (RT_s_2.R_choose (fn fy'B61_ => true) (fs'A3B_))
        in
            if RT_s_2.R_mem (RT_s_1.R_fromList [], fs'A3B_) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (20, 34)); false) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (21, 20)); (not (((RSL.C_not RT_s_1.equ) (fx'AFD_, fy'B61_))) orelse (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (21, 35)); not (((shareMember'F41_) (fx'AFD_, fy'B61_))))))
        end));
        
        ;
        
    end;
    
open Requirements;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "Basics.rsl", (21, 35), (21, 55));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (21, 20), (22, 15));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (20, 34), (21, 18));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (17, 9), (24, 6));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 52), (16, 60));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 22), (16, 28));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 6), (24, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (26, 31), (27, 41));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 97), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 84), (13, 9));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 21), (13, 27));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 11), (13, 19));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (12, 34), (13, 30));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 89), (29, 95));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 79), (29, 87));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 27), (30, 3)));
RSL.print_error_count();
R_coverage.save_marked();
