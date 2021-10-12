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
    
structure RT_x_6 =
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
    
structure RT_x_7 =
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
    
structure RT_x_8 =
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
    
structure DesignTest =
    struct
        type Person_ = RT_Text.t;
        
        type Family_ = RT_s_1.t;
        
        type Families_ = RT_s_2.t;
        
        type Table_ = RT_s_1.t;
        
        type Plan_ = RT_s_2.t;
        
        fun sh1'3971_ fs'39D9_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 16)); if RT_Nat.R_gt (RT_s_2.R_card((fs'39D9_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 37)); RT_Nat.R_add (RT_s_1.R_card((RT_s_2.R_hd((fs'39D9_)))), ((sh1'3971_) (RT_s_2.R_diff (fs'39D9_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'39D9_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 76)); RT_Int.fromLit "0"));
        
        fun areRelatives'32CE_ (p1'333F_, p2'3343_, fs'3347_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 34)); if (RT_s_2.R_exists (fn (f'3358_:RT_s_1.t) => (RT_s_1.R_mem (p1'333F_, f'3358_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 84)); (RT_s_1.R_mem (p2'3343_, f'3358_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (12, 97)); (RSL.C_not RT_Text.equ) (p1'333F_, p2'3343_)))) (fs'3347_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 11)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 21)); false));
        
        fun sh'3845_ fs'38AC_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (26, 15)); if RT_Nat.R_gt (RT_s_2.R_card((fs'38AC_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (26, 36)); RT_s_1.R_union (RT_s_2.R_hd((fs'38AC_)), ((sh'3845_) (RT_s_2.R_diff (fs'38AC_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'38AC_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (26, 72)); RT_s_1.R_fromList []));
        
        fun isWellformed'33FA_ fs'346B_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 6)); if RT_s_2.equ (fs'346B_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 22)); false) else if RT_Nat.equ (RT_s_2.R_card((fs'346B_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 52)); true) else if RT_s_2.R_mem (RT_s_1.R_fromList [], fs'346B_) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 79)); false) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 90)); RT_Nat.equ (((sh1'3971_) (fs'346B_)), RT_s_1.R_card((((sh'3845_) (fs'346B_)))))));
        
        fun shareMember'36B5_ (fx'3725_, fy'3728_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (22, 27)); if (RT_s_1.R_exists (fn (p'3739_:RT_Text.t) => RT_s_1.R_mem (p'3739_, fy'3728_)) (fx'3725_)) then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (22, 79)); true) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (22, 89)); false));
        
        fun isCorrectPlan'358A_ (pl'35FC_, fs'3600_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (19, 31)); let
            val t'360B_ = (RT_s_2.R_choose (fn t'360B_ => true) (pl'35FC_)); 
            val p1'3622_ = (RT_s_1.R_choose (fn p1'3622_ => true) (t'360B_)); 
            val p2'363C_ = (RT_s_1.R_choose (fn p2'363C_ => true) (t'360B_))
        in
            not (((areRelatives'32CE_) (p1'3622_, p2'363C_, fs'3600_)))
        end);
        
        fun containsFamilyMember'2D52_ (fs'2DCB_, person'2DCF_, table'2DD7_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (32, 45)); ((RT_s_1.R_exists (fn (p'2DE9_:RT_Text.t) => ((areRelatives'32CE_) (person'2DCF_, p'2DE9_, fs'2DCB_))) (table'2DD7_))));
        
        fun addToPlan'2909_ (originalFamilies'2977_, person'2989_, plan'2991_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (21, 51)); if RT_s_2.equ (plan'2991_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (23, 14)); ((addToPlan'2909_) (originalFamilies'2977_, person'2989_, RT_s_2.R_union (plan'2991_, RT_s_2.R_fromList ([RT_s_1.R_fromList []]))))) else if ((containsFamilyMember'2D52_) (originalFamilies'2977_, person'2989_, RT_s_2.R_hd((plan'2991_)))) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (26, 7)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_2.R_hd((plan'2991_))]), ((addToPlan'2909_) (originalFamilies'2977_, person'2989_, RT_s_2.R_diff (plan'2991_, RT_s_2.R_fromList ([RT_s_2.R_hd((plan'2991_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (28, 7)); RT_s_2.R_union (RT_s_2.R_diff (plan'2991_, RT_s_2.R_fromList ([RT_s_2.R_hd((plan'2991_))])), RT_s_2.R_fromList ([(RT_s_1.R_union (RT_s_2.R_hd((plan'2991_)), RT_s_1.R_fromList ([person'2989_])))]))));
        
        fun recPlan'2585_ (originalFamilies'25F1_, fs'2603_, p'2607_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (12, 41)); if RT_s_2.equ (fs'2603_, RT_s_2.R_fromList []) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (13, 13)); p'2607_) else if RT_s_2.equ (fs'2603_, RT_s_2.R_diff (RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_fromList []]), fs'2603_), RT_s_2.R_fromList ([RT_s_2.R_hd((fs'2603_))]))) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (15, 6)); ((recPlan'2585_) (originalFamilies'25F1_, RT_s_2.R_diff (fs'2603_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'2603_))])), p'2607_))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (17, 6)); ((recPlan'2585_) (originalFamilies'25F1_, RT_s_2.R_union (RT_s_2.R_diff (fs'2603_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'2603_))])), RT_s_2.R_fromList ([RT_s_1.R_diff (RT_s_2.R_hd((fs'2603_)), RT_s_1.R_fromList ([RT_s_1.R_hd((RT_s_2.R_hd((fs'2603_))))]))])), ((addToPlan'2909_) (originalFamilies'25F1_, RT_s_1.R_hd((RT_s_2.R_hd((fs'2603_)))), p'2607_))))));
        
        fun plan'2459_ fs'24C2_ = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (9, 17)); ((recPlan'2585_) (fs'24C2_, fs'24C2_, RT_s_2.R_fromList [])));
        
        val empty_families'1199_ = RT_s_2.R_fromList [];
        
        val p1'389_ = RT_Text.fromLit "Elisabeth";
        
        val p3'451_ = RT_Text.fromLit "Erik";
        
        val p2'3ED_ = RT_Text.fromLit "Lillian";
        
        val f2'965_ = RT_s_1.R_fromList ([p2'3ED_, p3'451_]);
        
        val single_families'1135_ = RT_s_2.R_fromList ([f2'965_]);
        
        val p4'4B5_ = RT_Text.fromLit "Frederik";
        
        val p6'57D_ = RT_Text.fromLit "Anne";
        
        val p5'519_ = RT_Text.fromLit "Henrik";
        
        val f3'9C9_ = RT_s_1.R_fromList ([p4'4B5_, p5'519_, p6'57D_]);
        
        val p11'771_ = RT_Text.fromLit "Pernille";
        
        val p7'5E1_ = RT_Text.fromLit "Lotte";
        
        val p10'70D_ = RT_Text.fromLit "Jacob";
        
        val p8'645_ = RT_Text.fromLit "Torsten";
        
        val p9'6A9_ = RT_Text.fromLit "Camilla";
        
        val f4'A2D_ = RT_s_1.R_fromList ([p7'5E1_, p8'645_, p9'6A9_, p10'70D_, p11'771_]);
        
        val f1'901_ = RT_s_1.R_fromList ([p1'389_]);
        
        val f5'B59_ = RT_s_1.R_fromList ([p1'389_, p1'389_]);
        
        val single_families_single_person'10D1_ = RT_s_2.R_fromList ([f1'901_]);
        
        val f6'C85_ = RT_s_1.R_fromList [];
        
        val f7'DB1_ = RT_s_1.R_fromList ([p1'389_, p2'3ED_]);
        
        val same_person_family'106D_ = RT_s_2.R_fromList ([f7'DB1_, f2'965_, f3'9C9_, f4'A2D_]);
        
        val families'F41_ = RT_s_2.R_fromList ([f1'901_, f2'965_, f3'9C9_, f4'A2D_]);
        
        val empty_family'1009_ = RT_s_2.R_fromList ([f6'C85_, f2'965_, f3'9C9_, f4'A2D_]);
        
        val reocc_in_family'FA5_ = RT_s_2.R_fromList ([f5'B59_, f2'965_, f3'9C9_, f4'A2D_]);
        
    end;
    
open DesignTest;

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
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (19, 31), (20, 41));
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
(RSL.C_output "[t1] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'32CE_) (p2'3ED_, p3'451_, families'F41_)), true)));

(RSL.C_output "[t2] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'32CE_) (p1'389_, p2'3ED_, families'F41_)), false)));

(RSL.C_output "[t3] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'32CE_) (p1'389_, p1'389_, families'F41_)), false)));

(RSL.C_output "[t4] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'32CE_) (p1'389_, p2'3ED_, empty_family'1009_)), false)));

(RSL.C_output "[t100] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'33FA_) (families'F41_)), true)));

(RSL.C_output "[t101] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'33FA_) (single_families_single_person'10D1_)), true)));

(RSL.C_output "[t102] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'33FA_) (single_families'1135_)), true)));

(RSL.C_output "[t103] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'33FA_) (reocc_in_family'FA5_)), true)));

(RSL.C_output "[t104] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'33FA_) (empty_family'1009_)), false)));

(RSL.C_output "[t105] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'33FA_) (same_person_family'106D_)), false)));

(RSL.C_output "[t106] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'33FA_) (empty_families'1199_)), false)));

(RSL.C_output "[t205] " RT_Bool.toStringSafe (fn _ => RT_s_1.equ (((sh'3845_) (families'F41_)), RT_s_1.R_fromList ([p1'389_, p2'3ED_, p3'451_, p4'4B5_, p5'519_, p6'57D_, p7'5E1_, p8'645_, p9'6A9_, p10'70D_, p11'771_]))));

(RSL.C_output "[t206] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((sh1'3971_) (families'F41_)), RT_Int.fromLit "11")));

(RSL.C_output "[t207] " RT_Bool.toStringSafe (fn _ => RT_Nat.equ (((sh1'3971_) (same_person_family'106D_)), RT_Int.fromLit "12")));

(RSL.C_output "[t208] " RT_Bool.toStringSafe (fn _ => RT_s_1.equ (((sh'3845_) (same_person_family'106D_)), RT_s_1.R_fromList ([p1'389_, p2'3ED_, p3'451_, p4'4B5_, p5'519_, p6'57D_, p7'5E1_, p8'645_, p9'6A9_, p10'70D_, p11'771_]))));

RSL.print_error_count();
R_coverage.save_marked();
