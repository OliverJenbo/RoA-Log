difference()
{
    translate([0.0, -30.0, -13.325])
    {
        difference()
        {
            hull()
            {
                translate([13.333333333333334, 30.0, 13.333333333333334])
                {
                    scale([20.0, 20.0, 20.0])
                    {
                        rotate_extrude(angle = 360.0, $fn = 64)
                        {
                            M273();
                        }
                    }
                }
                translate([-13.333333333333334, 30.0, 13.333333333333334])
                {
                    scale([20.0, 20.0, 20.0])
                    {
                        rotate_extrude(angle = 360.0, $fn = 64)
                        {
                            M273();
                        }
                    }
                }
                translate([13.333333333333334, -30.0, 13.333333333333334])
                {
                    scale([20.0, 20.0, 20.0])
                    {
                        rotate_extrude(angle = 360.0, $fn = 64)
                        {
                            M273();
                        }
                    }
                }
                translate([-13.333333333333334, -30.0, 13.333333333333334])
                {
                    scale([20.0, 20.0, 20.0])
                    {
                        rotate_extrude(angle = 360.0, $fn = 64)
                        {
                            M273();
                        }
                    }
                }
            }
            translate([0.0, 0.0, 13.325])
            {
                linear_extrude(height = 0.1, twist = 0.0, scale = 1.0, slices = 1, center = true)
                {
                    scale([90.0, 90.0])
                    {
                        M196();
                    }
                }
            }
        }
    }
    scale([1.02, 1.02, 1.02])
    {
        rotate([0.0, 90.0, 0.0])
        {
            union()
            {
                translate([0.0, -64.75, 1.0])
                {
                    linear_extrude(height = 19.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                    {
                        scale([8.6, 3.0])
                        {
                            M196();
                        }
                    }
                }
                union()
                {
                    translate([0.0, -65.0, 0.0])
                    {
                        rotate([90.0, 0.0, 0.0])
                        {
                            linear_extrude(height = 2.5, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([15.0, 15.0])
                                {
                                    M241();
                                }
                            }
                        }
                    }
                    union()
                    {
                        translate([0.0, -51.5, -8.0])
                        {
                            linear_extrude(height = 1.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                            {
                                scale([12.0, 25.5])
                                {
                                    M196();
                                }
                            }
                        }
                        union()
                        {
                            translate([0.0, -51.5, 10.0])
                            {
                                linear_extrude(height = 1.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                {
                                    scale([12.0, 25.5])
                                    {
                                        M196();
                                    }
                                }
                            }
                            union()
                            {
                                translate([0.0, -20.4, -10.5])
                                {
                                    linear_extrude(height = 2.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                    {
                                        scale([4.0, 4.0])
                                        {
                                            M241();
                                        }
                                    }
                                }
                                union()
                                {
                                    translate([0.0, -11.0, 0.0])
                                    {
                                        linear_extrude(height = 37.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                        {
                                            scale([5.0, 5.0])
                                            {
                                                M241();
                                            }
                                        }
                                    }
                                    union()
                                    {
                                        translate([0.0, -42.5, -8.75])
                                        {
                                            linear_extrude(height = 2.5, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                            {
                                                scale([6.0, 4.0])
                                                {
                                                    M196();
                                                }
                                            }
                                        }
                                        union()
                                        {
                                            translate([0.0, -42.5, 10.75])
                                            {
                                                linear_extrude(height = 2.5, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                                {
                                                    scale([6.0, 4.0])
                                                    {
                                                        M196();
                                                    }
                                                }
                                            }
                                            union()
                                            {
                                                translate([0.0, -37.0, 1.0])
                                                {
                                                    rotate([90.0, 0.0, 0.0])
                                                    {
                                                        union()
                                                        {
                                                            translate([0.0, 0.0, 5.5])
                                                            {
                                                                linear_extrude(height = 11.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                                                {
                                                                    difference()
                                                                    {
                                                                        difference()
                                                                        {
                                                                            scale([22.4, 22.4])
                                                                            {
                                                                                M241();
                                                                            }
                                                                            translate([0.0, 11.2])
                                                                            {
                                                                                scale([22.4, 5.4])
                                                                                {
                                                                                    M196();
                                                                                }
                                                                            }
                                                                        }
                                                                        translate([0.0, -11.2])
                                                                        {
                                                                            scale([22.4, 5.4])
                                                                            {
                                                                                M196();
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            translate([0.0, 0.0, 19.0])
                                                            {
                                                                linear_extrude(height = 16.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                                                {
                                                                    difference()
                                                                    {
                                                                        difference()
                                                                        {
                                                                            scale([20.4, 20.4])
                                                                            {
                                                                                M241();
                                                                            }
                                                                            translate([0.0, 11.2])
                                                                            {
                                                                                scale([22.4, 5.4])
                                                                                {
                                                                                    M196();
                                                                                }
                                                                            }
                                                                        }
                                                                        translate([0.0, -11.2])
                                                                        {
                                                                            scale([22.4, 5.4])
                                                                            {
                                                                                M196();
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                union()
                                                {
                                                    translate([0.0, 2.5, 0.0])
                                                    {
                                                        linear_extrude(height = 2.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                                        {
                                                            scale([5.0, 5.0])
                                                            {
                                                                M196();
                                                            }
                                                        }
                                                    }
                                                    linear_extrude(height = 19.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                                    {
                                                        translate([0.0, -20.5])
                                                        {
                                                            hull()
                                                            {
                                                                scale([22.4, 33.0])
                                                                {
                                                                    M196();
                                                                }
                                                                translate([0.0, 18.5])
                                                                {
                                                                    translate([-9.2, 0.0])
                                                                    {
                                                                        scale([4.0, 4.0])
                                                                        {
                                                                            M241();
                                                                        }
                                                                    }
                                                                }
                                                                translate([0.0, 18.5])
                                                                {
                                                                    translate([9.2, 0.0])
                                                                    {
                                                                        scale([4.0, 4.0])
                                                                        {
                                                                            M241();
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

module M273()
{
    polygon
    (
        points =
        [
            [0.0, 0.0], 
            [6.123233995736766E-17, -1.0], 
            [0.09801714032956077, -0.9951847266721968], 
            [0.19509032201612833, -0.9807852804032304], 
            [0.29028467725446233, -0.9569403357322089], 
            [0.38268343236508984, -0.9238795325112867], 
            [0.4713967368259978, -0.8819212643483549], 
            [0.5555702330196023, -0.8314696123025452], 
            [0.6343932841636455, -0.773010453362737], 
            [0.7071067811865476, -0.7071067811865475], 
            [0.773010453362737, -0.6343932841636455], 
            [0.8314696123025452, -0.5555702330196022], 
            [0.881921264348355, -0.47139673682599764], 
            [0.9238795325112867, -0.3826834323650898], 
            [0.9569403357322088, -0.29028467725446233], 
            [0.9807852804032304, -0.19509032201612825], 
            [0.9951847266721969, -0.0980171403295606], 
            [1.0, 0.0], 
            [0.9951847266721969, 0.0980171403295606], 
            [0.9807852804032304, 0.19509032201612825], 
            [0.9569403357322088, 0.29028467725446233], 
            [0.9238795325112867, 0.3826834323650898], 
            [0.881921264348355, 0.47139673682599764], 
            [0.8314696123025452, 0.5555702330196022], 
            [0.773010453362737, 0.6343932841636455], 
            [0.7071067811865476, 0.7071067811865475], 
            [0.6343932841636455, 0.773010453362737], 
            [0.5555702330196023, 0.8314696123025452], 
            [0.4713967368259978, 0.8819212643483549], 
            [0.38268343236508984, 0.9238795325112867], 
            [0.29028467725446233, 0.9569403357322089], 
            [0.19509032201612833, 0.9807852804032304], 
            [0.09801714032956077, 0.9951847266721968], 
            [6.123233995736766E-17, 1.0]
        ],
        paths =
        [
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]
        ]
    );
}

module M241()
{
    polygon
    (
        points =
        [
            [0.5, 0.0], 
            [0.49759236333609846, 0.0490085701647803], 
            [0.4903926402016152, 0.09754516100806412], 
            [0.4784701678661044, 0.14514233862723117], 
            [0.46193976625564337, 0.1913417161825449], 
            [0.4409606321741775, 0.23569836841299882], 
            [0.4157348061512726, 0.2777851165098011], 
            [0.3865052266813685, 0.31719664208182274], 
            [0.3535533905932738, 0.35355339059327373], 
            [0.31719664208182274, 0.3865052266813685], 
            [0.27778511650980114, 0.4157348061512726], 
            [0.2356983684129989, 0.44096063217417747], 
            [0.19134171618254492, 0.46193976625564337], 
            [0.14514233862723117, 0.47847016786610447], 
            [0.09754516100806417, 0.4903926402016152], 
            [0.049008570164780385, 0.4975923633360984], 
            [3.061616997868383E-17, 0.5], 
            [-0.04900857016478032, 0.49759236333609846], 
            [-0.0975451610080641, 0.4903926402016152], 
            [-0.14514233862723108, 0.47847016786610447], 
            [-0.19134171618254486, 0.46193976625564337], 
            [-0.23569836841299885, 0.4409606321741775], 
            [-0.277785116509801, 0.41573480615127273], 
            [-0.3171966420818227, 0.38650522668136855], 
            [-0.35355339059327373, 0.3535533905932738], 
            [-0.3865052266813685, 0.31719664208182274], 
            [-0.4157348061512727, 0.2777851165098011], 
            [-0.44096063217417747, 0.23569836841299893], 
            [-0.46193976625564337, 0.19134171618254495], 
            [-0.4784701678661044, 0.1451423386272312], 
            [-0.4903926402016152, 0.0975451610080643], 
            [-0.4975923633360984, 0.04900857016478041], 
            [-0.5, 6.123233995736766E-17], 
            [-0.49759236333609846, -0.049008570164780295], 
            [-0.4903926402016152, -0.09754516100806418], 
            [-0.47847016786610447, -0.14514233862723105], 
            [-0.4619397662556434, -0.19134171618254484], 
            [-0.4409606321741775, -0.23569836841299882], 
            [-0.41573480615127273, -0.277785116509801], 
            [-0.38650522668136855, -0.31719664208182263], 
            [-0.35355339059327384, -0.35355339059327373], 
            [-0.31719664208182297, -0.38650522668136833], 
            [-0.2777851165098011, -0.4157348061512726], 
            [-0.23569836841299893, -0.44096063217417747], 
            [-0.19134171618254517, -0.46193976625564326], 
            [-0.14514233862723122, -0.4784701678661044], 
            [-0.09754516100806433, -0.49039264020161516], 
            [-0.049008570164780225, -0.49759236333609846], 
            [-9.184850993605148E-17, -0.5], 
            [0.049008570164780045, -0.49759236333609846], 
            [0.09754516100806415, -0.4903926402016152], 
            [0.14514233862723103, -0.47847016786610447], 
            [0.191341716182545, -0.4619397662556433], 
            [0.2356983684129988, -0.4409606321741775], 
            [0.2777851165098009, -0.41573480615127273], 
            [0.3171966420818228, -0.38650522668136844], 
            [0.3535533905932737, -0.35355339059327384], 
            [0.38650522668136833, -0.31719664208182297], 
            [0.4157348061512726, -0.2777851165098011], 
            [0.4409606321741774, -0.23569836841299896], 
            [0.46193976625564326, -0.1913417161825452], 
            [0.4784701678661044, -0.14514233862723125], 
            [0.49039264020161516, -0.09754516100806436], 
            [0.49759236333609846, -0.04900857016478025]
        ],
        paths =
        [
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63]
        ]
    );
}

module M196()
{
    polygon
    (
        points =
        [
            [-0.5, -0.5], 
            [0.5, -0.5], 
            [0.5, 0.5], 
            [-0.5, 0.5]
        ],
        paths =
        [
            [0, 1, 2, 3]
        ]
    );
}
