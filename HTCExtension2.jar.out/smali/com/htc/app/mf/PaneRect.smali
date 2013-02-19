.class public Lcom/htc/app/mf/PaneRect;
.super Ljava/lang/Object;
.source "PaneRect.java"


# instance fields
.field height:I

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x5

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/htc/app/mf/PaneRect;->x:I

    .line 21
    iput p2, p0, Lcom/htc/app/mf/PaneRect;->y:I

    .line 22
    iput p3, p0, Lcom/htc/app/mf/PaneRect;->width:I

    .line 23
    iput p4, p0, Lcom/htc/app/mf/PaneRect;->height:I

    .line 25
    iput v0, p0, Lcom/htc/app/mf/PaneRect;->paddingLeft:I

    .line 26
    iput v0, p0, Lcom/htc/app/mf/PaneRect;->paddingTop:I

    .line 27
    iput v0, p0, Lcom/htc/app/mf/PaneRect;->paddingRight:I

    .line 28
    iput v0, p0, Lcom/htc/app/mf/PaneRect;->paddingBottom:I

    .line 29
    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paddingLeft"
    .parameter "paddingTop"
    .parameter "paddingRight"
    .parameter "paddingBottom"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/htc/app/mf/PaneRect;->x:I

    .line 34
    iput p2, p0, Lcom/htc/app/mf/PaneRect;->y:I

    .line 35
    iput p3, p0, Lcom/htc/app/mf/PaneRect;->width:I

    .line 36
    iput p4, p0, Lcom/htc/app/mf/PaneRect;->height:I

    .line 38
    iput p5, p0, Lcom/htc/app/mf/PaneRect;->paddingLeft:I

    .line 39
    iput p6, p0, Lcom/htc/app/mf/PaneRect;->paddingTop:I

    .line 40
    iput p7, p0, Lcom/htc/app/mf/PaneRect;->paddingRight:I

    .line 41
    iput p8, p0, Lcom/htc/app/mf/PaneRect;->paddingBottom:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/htc/app/mf/PaneRect;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget v0, p1, Lcom/htc/app/mf/PaneRect;->x:I

    iput v0, p0, Lcom/htc/app/mf/PaneRect;->x:I

    .line 46
    iget v0, p1, Lcom/htc/app/mf/PaneRect;->y:I

    iput v0, p0, Lcom/htc/app/mf/PaneRect;->y:I

    .line 47
    iget v0, p1, Lcom/htc/app/mf/PaneRect;->width:I

    iput v0, p0, Lcom/htc/app/mf/PaneRect;->width:I

    .line 48
    iget v0, p1, Lcom/htc/app/mf/PaneRect;->height:I

    iput v0, p0, Lcom/htc/app/mf/PaneRect;->height:I

    .line 50
    iget v0, p1, Lcom/htc/app/mf/PaneRect;->paddingLeft:I

    iput v0, p0, Lcom/htc/app/mf/PaneRect;->paddingLeft:I

    .line 51
    iget v0, p1, Lcom/htc/app/mf/PaneRect;->paddingTop:I

    iput v0, p0, Lcom/htc/app/mf/PaneRect;->paddingTop:I

    .line 52
    iget v0, p1, Lcom/htc/app/mf/PaneRect;->paddingRight:I

    iput v0, p0, Lcom/htc/app/mf/PaneRect;->paddingRight:I

    .line 53
    iget v0, p1, Lcom/htc/app/mf/PaneRect;->paddingBottom:I

    iput v0, p0, Lcom/htc/app/mf/PaneRect;->paddingBottom:I

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    if-ne p1, p0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    instance-of v3, p1, Lcom/htc/app/mf/PaneRect;

    if-nez v3, :cond_2

    move v1, v2

    .line 67
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/htc/app/mf/PaneRect;

    .line 72
    .local v0, target:Lcom/htc/app/mf/PaneRect;
    iget v3, p0, Lcom/htc/app/mf/PaneRect;->x:I

    iget v4, v0, Lcom/htc/app/mf/PaneRect;->x:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/htc/app/mf/PaneRect;->y:I

    iget v4, v0, Lcom/htc/app/mf/PaneRect;->y:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/htc/app/mf/PaneRect;->width:I

    iget v4, v0, Lcom/htc/app/mf/PaneRect;->width:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/htc/app/mf/PaneRect;->height:I

    iget v4, v0, Lcom/htc/app/mf/PaneRect;->height:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/htc/app/mf/PaneRect;->paddingLeft:I

    iget v4, v0, Lcom/htc/app/mf/PaneRect;->paddingLeft:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/htc/app/mf/PaneRect;->paddingTop:I

    iget v4, v0, Lcom/htc/app/mf/PaneRect;->paddingTop:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/htc/app/mf/PaneRect;->paddingRight:I

    iget v4, v0, Lcom/htc/app/mf/PaneRect;->paddingRight:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/htc/app/mf/PaneRect;->paddingBottom:I

    iget v4, v0, Lcom/htc/app/mf/PaneRect;->paddingBottom:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/app/mf/PaneRect;->x:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/htc/app/mf/PaneRect;->y:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/app/mf/PaneRect;->width:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/app/mf/PaneRect;->height:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/app/mf/PaneRect;->paddingLeft:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/app/mf/PaneRect;->paddingTop:I

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/app/mf/PaneRect;->paddingRight:I

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/app/mf/PaneRect;->paddingBottom:I

    shl-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    return v0
.end method
