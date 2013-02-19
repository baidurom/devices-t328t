.class public final Lcom/htc/wrap/android/util/HtcWrapMathUtils;
.super Ljava/lang/Object;
.source "HtcWrapMathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(F)F
    .locals 1
    .parameter "v"

    .prologue
    .line 16
    invoke-static {p0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    return v0
.end method

.method public static acos(F)F
    .locals 1
    .parameter "value"

    .prologue
    .line 164
    invoke-static {p0}, Landroid/util/MathUtils;->acos(F)F

    move-result v0

    return v0
.end method

.method public static asin(F)F
    .locals 1
    .parameter "value"

    .prologue
    .line 172
    invoke-static {p0}, Landroid/util/MathUtils;->asin(F)F

    move-result v0

    return v0
.end method

.method public static atan(F)F
    .locals 1
    .parameter "value"

    .prologue
    .line 180
    invoke-static {p0}, Landroid/util/MathUtils;->atan(F)F

    move-result v0

    return v0
.end method

.method public static atan2(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 188
    invoke-static {p0, p1}, Landroid/util/MathUtils;->atan2(FF)F

    move-result v0

    return v0
.end method

.method public static constrain(FFF)F
    .locals 1
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public static constrain(III)I
    .locals 1
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method public static degrees(F)F
    .locals 1
    .parameter "radians"

    .prologue
    .line 156
    invoke-static {p0}, Landroid/util/MathUtils;->degrees(F)F

    move-result v0

    return v0
.end method

.method public static dist(FFFF)F
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 108
    invoke-static {p0, p1, p2, p3}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    return v0
.end method

.method public static dist(FFFFFF)F
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "z1"
    .parameter "x2"
    .parameter "y2"
    .parameter "z2"

    .prologue
    .line 116
    invoke-static/range {p0 .. p5}, Landroid/util/MathUtils;->dist(FFFFFF)F

    move-result v0

    return v0
.end method

.method public static exp(F)F
    .locals 1
    .parameter "a"

    .prologue
    .line 44
    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method public static lerp(FFF)F
    .locals 1
    .parameter "start"
    .parameter "stop"
    .parameter "amount"

    .prologue
    .line 204
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static log(F)F
    .locals 1
    .parameter "a"

    .prologue
    .line 36
    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    return v0
.end method

.method public static mag(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 124
    invoke-static {p0, p1}, Landroid/util/MathUtils;->mag(FF)F

    move-result v0

    return v0
.end method

.method public static mag(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->mag(FFF)F

    move-result v0

    return v0
.end method

.method public static map(FFFFF)F
    .locals 1
    .parameter "minStart"
    .parameter "minStop"
    .parameter "maxStart"
    .parameter "maxStop"
    .parameter "value"

    .prologue
    .line 220
    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method public static max(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 60
    invoke-static {p0, p1}, Landroid/util/MathUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->max(FFF)F

    move-result v0

    return v0
.end method

.method public static max(II)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 64
    invoke-static {p0, p1}, Landroid/util/MathUtils;->max(II)F

    move-result v0

    return v0
.end method

.method public static max(III)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 76
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->max(III)F

    move-result v0

    return v0
.end method

.method public static min(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 84
    invoke-static {p0, p1}, Landroid/util/MathUtils;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->min(FFF)F

    move-result v0

    return v0
.end method

.method public static min(II)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 88
    invoke-static {p0, p1}, Landroid/util/MathUtils;->min(II)F

    move-result v0

    return v0
.end method

.method public static min(III)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 100
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->min(III)F

    move-result v0

    return v0
.end method

.method public static norm(FFF)F
    .locals 1
    .parameter "start"
    .parameter "stop"
    .parameter "value"

    .prologue
    .line 212
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    return v0
.end method

.method public static pow(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 52
    invoke-static {p0, p1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    return v0
.end method

.method public static radians(F)F
    .locals 1
    .parameter "degrees"

    .prologue
    .line 148
    invoke-static {p0}, Landroid/util/MathUtils;->radians(F)F

    move-result v0

    return v0
.end method

.method public static random(F)F
    .locals 1
    .parameter "howbig"

    .prologue
    .line 240
    invoke-static {p0}, Landroid/util/MathUtils;->random(F)F

    move-result v0

    return v0
.end method

.method public static random(FF)F
    .locals 1
    .parameter "howsmall"
    .parameter "howbig"

    .prologue
    .line 244
    invoke-static {p0, p1}, Landroid/util/MathUtils;->random(FF)F

    move-result v0

    return v0
.end method

.method public static random(I)I
    .locals 1
    .parameter "howbig"

    .prologue
    .line 228
    invoke-static {p0}, Landroid/util/MathUtils;->random(I)I

    move-result v0

    return v0
.end method

.method public static random(II)I
    .locals 1
    .parameter "howsmall"
    .parameter "howbig"

    .prologue
    .line 236
    invoke-static {p0, p1}, Landroid/util/MathUtils;->random(II)I

    move-result v0

    return v0
.end method

.method public static randomSeed(J)V
    .locals 0
    .parameter "seed"

    .prologue
    .line 252
    invoke-static {p0, p1}, Landroid/util/MathUtils;->randomSeed(J)V

    .line 253
    return-void
.end method

.method public static sq(F)F
    .locals 1
    .parameter "v"

    .prologue
    .line 140
    invoke-static {p0}, Landroid/util/MathUtils;->sq(F)F

    move-result v0

    return v0
.end method

.method public static tan(F)F
    .locals 1
    .parameter "angle"

    .prologue
    .line 196
    invoke-static {p0}, Landroid/util/MathUtils;->tan(F)F

    move-result v0

    return v0
.end method
