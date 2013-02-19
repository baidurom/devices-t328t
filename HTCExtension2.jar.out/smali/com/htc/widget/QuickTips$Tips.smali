.class public Lcom/htc/widget/QuickTips$Tips;
.super Ljava/lang/Object;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/QuickTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tips"
.end annotation


# instance fields
.field private anchors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/QuickTips$TipAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private bounds:Landroid/graphics/Rect;

.field private marginRatio:F

.field private quickTips:Lcom/htc/widget/QuickTips;


# direct methods
.method public constructor <init>(Lcom/htc/widget/QuickTips;)V
    .locals 1
    .parameter "quickTips"

    .prologue
    .line 647
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 643
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    .line 648
    iput-object p1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    .line 650
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/QuickTips$Tips;)Lcom/htc/widget/QuickTips$Tips;
    .locals 1
    .parameter "x0"

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/htc/widget/QuickTips$Tips;->clear()Lcom/htc/widget/QuickTips$Tips;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/QuickTips$Tips;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/htc/widget/QuickTips$Tips;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/widget/QuickTips$Tips;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/QuickTips$Tips;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/QuickTips$Tips;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 639
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/QuickTips$Tips;->setBounds(IIII)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/QuickTips$Tips;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/htc/widget/QuickTips$Tips;->setMarginRatio(F)V

    return-void
.end method

.method private addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 1
    .parameter "anchor"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private addArrow(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Lcom/htc/widget/QuickTips$TipArrow;
    .locals 13
    .parameter "screen"
    .parameter "targetRect"
    .parameter "targetViewId"
    .parameter "arrowGap"

    .prologue
    .line 1059
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 1060
    .local v8, targetCenterX:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 1061
    .local v9, targetCenterY:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 1062
    .local v6, screenCenterX:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 1063
    .local v7, screenCenterY:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-le v10, v6, :cond_0

    const/4 v5, 0x1

    .line 1064
    .local v5, largeTarget:Z
    :goto_0
    const/4 v2, 0x0

    .line 1065
    .local v2, arrow:Lcom/htc/widget/QuickTips$TipArrow;
    if-ge v8, v6, :cond_a

    .line 1066
    if-ge v9, v7, :cond_5

    .line 1068
    if-eqz v5, :cond_1

    const/4 v10, 0x2

    :goto_1
    or-int/lit8 v3, v10, 0x20

    .line 1069
    .local v3, arrowAnchorMode:I
    if-eqz v5, :cond_2

    const/16 v4, 0x5a

    .line 1071
    .local v4, arrowDegree:I
    :goto_2
    const/4 v1, 0x0

    .line 1072
    .local v1, anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    if-lez p3, :cond_3

    .line 1073
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    invoke-direct {v10, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    move/from16 v0, p3

    invoke-virtual {p0, v0, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(IILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    .line 1079
    :goto_3
    new-instance v2, Lcom/htc/widget/QuickTips$TipArrow;

    .end local v2           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-direct {v2, v4}, Lcom/htc/widget/QuickTips$TipArrow;-><init>(I)V

    .restart local v2       #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    .line 1126
    :goto_4
    return-object v2

    .line 1063
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v2           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    .end local v5           #largeTarget:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1068
    .restart local v2       #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    .restart local v5       #largeTarget:Z
    :cond_1
    const/4 v10, 0x4

    goto :goto_1

    .line 1069
    .restart local v3       #arrowAnchorMode:I
    :cond_2
    const/16 v4, 0x87

    goto :goto_2

    .line 1074
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .restart local v4       #arrowDegree:I
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v10, :cond_4

    .line 1075
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    invoke-direct {v10, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p2, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_3

    .line 1077
    :cond_4
    new-instance v10, Landroid/graphics/Point;

    iget v11, p2, Landroid/graphics/Rect;->left:I

    iget v12, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_3

    .line 1082
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_5
    if-eqz v5, :cond_6

    const/4 v10, 0x2

    :goto_5
    or-int/lit8 v3, v10, 0x8

    .line 1083
    .restart local v3       #arrowAnchorMode:I
    if-eqz v5, :cond_7

    const/16 v4, 0x10e

    .line 1085
    .restart local v4       #arrowDegree:I
    :goto_6
    const/4 v1, 0x0

    .line 1086
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    if-lez p3, :cond_8

    .line 1087
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    neg-int v12, v0

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    move/from16 v0, p3

    invoke-virtual {p0, v0, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(IILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    .line 1093
    :goto_7
    new-instance v2, Lcom/htc/widget/QuickTips$TipArrow;

    .end local v2           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-direct {v2, v4}, Lcom/htc/widget/QuickTips$TipArrow;-><init>(I)V

    .restart local v2       #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_4

    .line 1082
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_6
    const/4 v10, 0x4

    goto :goto_5

    .line 1083
    .restart local v3       #arrowAnchorMode:I
    :cond_7
    const/16 v4, 0xe1

    goto :goto_6

    .line 1088
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .restart local v4       #arrowDegree:I
    :cond_8
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lez v10, :cond_9

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v10, :cond_9

    .line 1089
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    neg-int v12, v0

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p2, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_7

    .line 1091
    :cond_9
    new-instance v10, Landroid/graphics/Point;

    iget v11, p2, Landroid/graphics/Rect;->left:I

    iget v12, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_7

    .line 1096
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_a
    if-ge v9, v7, :cond_f

    .line 1098
    if-eqz v5, :cond_b

    const/4 v10, 0x2

    :goto_8
    or-int/lit8 v3, v10, 0x20

    .line 1099
    .restart local v3       #arrowAnchorMode:I
    if-eqz v5, :cond_c

    const/16 v4, 0x5a

    .line 1101
    .restart local v4       #arrowDegree:I
    :goto_9
    const/4 v1, 0x0

    .line 1102
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    if-lez p3, :cond_d

    .line 1103
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    invoke-direct {v10, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    move/from16 v0, p3

    invoke-virtual {p0, v0, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(IILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    .line 1109
    :goto_a
    new-instance v2, Lcom/htc/widget/QuickTips$TipArrow;

    .end local v2           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-direct {v2, v4}, Lcom/htc/widget/QuickTips$TipArrow;-><init>(I)V

    .restart local v2       #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto/16 :goto_4

    .line 1098
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_b
    const/4 v10, 0x1

    goto :goto_8

    .line 1099
    .restart local v3       #arrowAnchorMode:I
    :cond_c
    const/16 v4, 0x2d

    goto :goto_9

    .line 1104
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .restart local v4       #arrowDegree:I
    :cond_d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lez v10, :cond_e

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v10, :cond_e

    .line 1105
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    invoke-direct {v10, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p2, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_a

    .line 1107
    :cond_e
    new-instance v10, Landroid/graphics/Point;

    iget v11, p2, Landroid/graphics/Rect;->left:I

    iget v12, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_a

    .line 1112
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_f
    if-eqz v5, :cond_10

    const/4 v10, 0x2

    :goto_b
    or-int/lit8 v3, v10, 0x8

    .line 1113
    .restart local v3       #arrowAnchorMode:I
    if-eqz v5, :cond_11

    const/16 v4, 0x10e

    .line 1115
    .restart local v4       #arrowDegree:I
    :goto_c
    const/4 v1, 0x0

    .line 1116
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    if-lez p3, :cond_12

    .line 1117
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    neg-int v12, v0

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    move/from16 v0, p3

    invoke-virtual {p0, v0, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(IILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    .line 1123
    :goto_d
    new-instance v2, Lcom/htc/widget/QuickTips$TipArrow;

    .end local v2           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-direct {v2, v4}, Lcom/htc/widget/QuickTips$TipArrow;-><init>(I)V

    .restart local v2       #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto/16 :goto_4

    .line 1112
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_10
    const/4 v10, 0x1

    goto :goto_b

    .line 1113
    .restart local v3       #arrowAnchorMode:I
    :cond_11
    const/16 v4, 0x13b

    goto :goto_c

    .line 1118
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .restart local v4       #arrowDegree:I
    :cond_12
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lez v10, :cond_13

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v10, :cond_13

    .line 1119
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    neg-int v12, v0

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p2, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_d

    .line 1121
    :cond_13
    new-instance v10, Landroid/graphics/Point;

    iget v11, p2, Landroid/graphics/Rect;->left:I

    iget v12, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_d
.end method

.method private addText(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/htc/widget/QuickTips$TipArrow;IIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 11
    .parameter "screen"
    .parameter "targetRect"
    .parameter "arrow"
    .parameter "textGap"
    .parameter "textWidth"
    .parameter "textAlign"
    .parameter "text"

    .prologue
    .line 1129
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 1130
    .local v6, targetCenterX:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 1131
    .local v7, targetCenterY:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 1132
    .local v4, screenCenterX:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 1133
    .local v5, screenCenterY:I
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$000()I

    move-result v8

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$100()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2000()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    sub-int v2, v8, v9

    .line 1134
    .local v2, TextWidth:I
    new-instance v3, Lcom/htc/widget/QuickTips$TipText;

    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-direct {v3, v0, v1, v2}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 1135
    .local v3, item:Lcom/htc/widget/QuickTips$TipText;
    if-ge v6, v4, :cond_1

    .line 1136
    if-ge v7, v5, :cond_0

    .line 1137
    const/16 v8, 0x24

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-direct {v9, p4, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p3, v8, v9}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v3, v9}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    .line 1152
    :goto_0
    return-object v3

    .line 1140
    :cond_0
    const/16 v8, 0xc

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-direct {v9, p4, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p3, v8, v9}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v3, v9}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_0

    .line 1144
    :cond_1
    if-ge v7, v5, :cond_2

    .line 1145
    const/16 v8, 0x21

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-direct {v9, p4, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p3, v8, v9}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v3, v9}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_0

    .line 1148
    :cond_2
    const/16 v8, 0x9

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-direct {v9, p4, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p3, v8, v9}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v3, v9}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_0
.end method

.method private addTip(Landroid/graphics/Rect;IIIIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 8
    .parameter "targetRect"
    .parameter "targetViewId"
    .parameter "arrowGap"
    .parameter "textGap"
    .parameter "textWidth"
    .parameter "textAlign"
    .parameter "text"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v2, -0x2710

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(I)Landroid/graphics/Rect;
    invoke-static {v0, v2}, Lcom/htc/widget/QuickTips;->access$1900(Lcom/htc/widget/QuickTips;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1034
    .local v1, screen:Landroid/graphics/Rect;
    if-nez p1, :cond_0

    .line 1035
    if-ltz p2, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(I)Landroid/graphics/Rect;
    invoke-static {v0, p2}, Lcom/htc/widget/QuickTips;->access$1900(Lcom/htc/widget/QuickTips;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1041
    :cond_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/htc/widget/QuickTips$Tips;->addArrow(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Lcom/htc/widget/QuickTips$TipArrow;

    move-result-object v3

    .local v3, arrow:Lcom/htc/widget/QuickTips$TipArrow;
    move-object v0, p0

    move-object v2, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 1042
    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/QuickTips$Tips;->addText(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/htc/widget/QuickTips$TipArrow;IIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0

    .line 1038
    .end local v3           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Please provide a rectangle or view id at least to highlight"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;
    .locals 20
    .parameter "targetRect"
    .parameter "targetViewId"
    .parameter "text"
    .parameter "withArrow"

    .prologue
    .line 925
    const-string v15, "QuickTips"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "add Tips: rect pass from AP side"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v16, -0x2710

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(I)Landroid/graphics/Rect;
    invoke-static/range {v15 .. v16}, Lcom/htc/widget/QuickTips;->access$1900(Lcom/htc/widget/QuickTips;I)Landroid/graphics/Rect;

    move-result-object v9

    .line 928
    .local v9, screen:Landroid/graphics/Rect;
    if-nez p1, :cond_0

    .line 929
    if-ltz p2, :cond_1

    .line 930
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    move/from16 v0, p2

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(I)Landroid/graphics/Rect;
    invoke-static {v15, v0}, Lcom/htc/widget/QuickTips;->access$1900(Lcom/htc/widget/QuickTips;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 936
    :cond_0
    const/4 v7, 0x0

    .line 938
    .local v7, arrowGap:I
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$100()I

    move-result v14

    .line 940
    .local v14, textMargin:I
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$000()I

    move-result v15

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$100()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2000()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-int v4, v15, v16

    .line 941
    .local v4, TextWidth:I
    const/4 v3, 0x0

    .line 944
    .local v3, AlignDirection:I
    const/4 v6, 0x0

    .line 945
    .local v6, arrowBounds:Landroid/graphics/Rect;
    if-eqz p4, :cond_2

    .line 946
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v9, v1, v2, v7}, Lcom/htc/widget/QuickTips$Tips;->addArrow(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Lcom/htc/widget/QuickTips$TipArrow;

    move-result-object v5

    .line 947
    .local v5, arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-virtual {v5}, Lcom/htc/widget/QuickTips$TipArrow;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 953
    .end local v5           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    .line 954
    .local v12, targetCenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    .line 955
    .local v13, targetCenterY:I
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 956
    .local v10, screenCenterX:I
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 957
    .local v11, screenCenterY:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 959
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2100()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v14, v15

    .line 960
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$000()I

    move-result v15

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2100()I

    move-result v16

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-int v4, v15, v16

    .line 968
    :goto_1
    if-ge v12, v10, :cond_6

    .line 969
    if-ge v13, v11, :cond_5

    .line 971
    new-instance v8, Lcom/htc/widget/QuickTips$TipText;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v3, v4}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 972
    .local v8, item:Lcom/htc/widget/QuickTips$TipText;
    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v15, v0, v1, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;I)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    .line 993
    :goto_2
    return-object v8

    .line 932
    .end local v3           #AlignDirection:I
    .end local v4           #TextWidth:I
    .end local v6           #arrowBounds:Landroid/graphics/Rect;
    .end local v7           #arrowGap:I
    .end local v8           #item:Lcom/htc/widget/QuickTips$TipText;
    .end local v10           #screenCenterX:I
    .end local v11           #screenCenterY:I
    .end local v12           #targetCenterX:I
    .end local v13           #targetCenterY:I
    .end local v14           #textMargin:I
    :cond_1
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Please provide a rectangle or view id at least to highlight"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 950
    .restart local v3       #AlignDirection:I
    .restart local v4       #TextWidth:I
    .restart local v6       #arrowBounds:Landroid/graphics/Rect;
    .restart local v7       #arrowGap:I
    .restart local v14       #textMargin:I
    :cond_2
    new-instance v6, Landroid/graphics/Rect;

    .end local v6           #arrowBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v6       #arrowBounds:Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 963
    .restart local v10       #screenCenterX:I
    .restart local v11       #screenCenterY:I
    .restart local v12       #targetCenterX:I
    .restart local v13       #targetCenterY:I
    :cond_3
    if-ge v12, v10, :cond_4

    .line 964
    const/4 v3, 0x0

    goto :goto_1

    .line 966
    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    .line 976
    :cond_5
    new-instance v8, Lcom/htc/widget/QuickTips$TipText;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v3, v4}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 977
    .restart local v8       #item:Lcom/htc/widget/QuickTips$TipText;
    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v15, v0, v1, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;I)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_2

    .line 981
    .end local v8           #item:Lcom/htc/widget/QuickTips$TipText;
    :cond_6
    if-ge v13, v11, :cond_7

    .line 983
    new-instance v8, Lcom/htc/widget/QuickTips$TipText;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v3, v4}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 984
    .restart local v8       #item:Lcom/htc/widget/QuickTips$TipText;
    new-instance v15, Landroid/graphics/Rect;

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, v14

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;I)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v15

    const/16 v16, 0xc

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_2

    .line 988
    .end local v8           #item:Lcom/htc/widget/QuickTips$TipText;
    :cond_7
    new-instance v8, Lcom/htc/widget/QuickTips$TipText;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v3, v4}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 989
    .restart local v8       #item:Lcom/htc/widget/QuickTips$TipText;
    new-instance v15, Landroid/graphics/Rect;

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, v14

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;I)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v15

    const/16 v16, 0x24

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto/16 :goto_2
.end method

.method private clear()Lcom/htc/widget/QuickTips$Tips;
    .locals 3

    .prologue
    .line 1166
    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/QuickTips$TipAnchor;

    .line 1167
    .local v0, anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    #getter for: Lcom/htc/widget/QuickTips$TipAnchor;->content:Lcom/htc/widget/QuickTips$TipItem;
    invoke-static {v0}, Lcom/htc/widget/QuickTips$TipAnchor;->access$2200(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/widget/QuickTips$TipItem;->destroy()V

    goto :goto_0

    .line 1169
    .end local v0           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1170
    return-object p0
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1160
    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/QuickTips$TipAnchor;

    .line 1161
    .local v0, anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    invoke-virtual {v0, p1}, Lcom/htc/widget/QuickTips$TipAnchor;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1163
    .end local v0           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    :cond_0
    return-void
.end method

.method private setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->bounds:Landroid/graphics/Rect;

    .line 1157
    return-void
.end method

.method private setMarginRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 1174
    iput p1, p0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    .line 1175
    return-void
.end method


# virtual methods
.method public addAnchor(I)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 4
    .parameter "targetViewId"

    .prologue
    .line 677
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(II)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 3
    .parameter "targetViewId"
    .parameter "anchorMode"

    .prologue
    .line 691
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(IILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetViewId"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 715
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 3
    .parameter "targetViewId"
    .parameter "relativeLocation"

    .prologue
    .line 702
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v2, 0x9

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 4
    .parameter "absoluteLocation"

    .prologue
    .line 665
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v2, -0x2710

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/graphics/Rect;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetRect"

    .prologue
    .line 830
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/graphics/Rect;I)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetRect"
    .parameter "anchorMode"

    .prologue
    .line 843
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;I)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/graphics/Rect;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetRect"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 865
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/graphics/Rect;Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetRect"
    .parameter "relativeLocation"

    .prologue
    .line 854
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/view/View;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 5
    .parameter "targetView"

    .prologue
    .line 729
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v2, -0x1

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 730
    .local v0, targetRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    invoke-direct {p0, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    return-object v1
.end method

.method public addAnchor(Landroid/view/View;I)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 4
    .parameter "targetView"
    .parameter "anchorMode"

    .prologue
    .line 744
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v2, -0x1

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 745
    .local v0, targetRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, p2, v3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    invoke-direct {p0, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    return-object v1
.end method

.method public addAnchor(Landroid/view/View;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 3
    .parameter "targetView"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 770
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v2, -0x1

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 771
    .local v0, targetRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    invoke-direct {p0, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    return-object v1
.end method

.method public addAnchor(Landroid/view/View;Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 4
    .parameter "targetView"
    .parameter "relativeLocation"

    .prologue
    .line 756
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v2, -0x1

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 757
    .local v0, targetRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v3, 0x9

    invoke-direct {v1, v2, v0, v3, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    invoke-direct {p0, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    return-object v1
.end method

.method public addAnchor(Lcom/htc/widget/QuickTips$TipItem;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetItem"

    .prologue
    .line 783
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Lcom/htc/widget/QuickTips$TipItem;I)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetItem"
    .parameter "anchorMode"

    .prologue
    .line 796
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;I)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetItem"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 818
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Lcom/htc/widget/QuickTips$TipItem;Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetItem"
    .parameter "relativeLocation"

    .prologue
    .line 807
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;Landroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addTip(IIIIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 8
    .parameter "targetViewId"
    .parameter "arrowGap"
    .parameter "textGap"
    .parameter "textWidth"
    .parameter "textAlign"
    .parameter "text"

    .prologue
    .line 1011
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;IIIIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(ILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 2
    .parameter "targetViewId"
    .parameter "text"

    .prologue
    .line 885
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;
    .locals 1
    .parameter "targetViewId"
    .parameter "text"
    .parameter "withArrow"

    .prologue
    .line 877
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(Landroid/graphics/Rect;IIIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 8
    .parameter "targetRect"
    .parameter "arrowGap"
    .parameter "textGap"
    .parameter "textWidth"
    .parameter "textAlign"
    .parameter "text"

    .prologue
    .line 1026
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;IIIIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(Landroid/graphics/Rect;Ljava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 2
    .parameter "targetRect"
    .parameter "text"

    .prologue
    .line 921
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(Landroid/graphics/Rect;Ljava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;
    .locals 1
    .parameter "targetRect"
    .parameter "text"
    .parameter "withArrow"

    .prologue
    .line 913
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(Landroid/view/View;Ljava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 3
    .parameter "targetView"
    .parameter "text"

    .prologue
    const/4 v2, -0x1

    .line 903
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 904
    .local v0, targetRect:Landroid/graphics/Rect;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, p2, v1}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v1

    return-object v1
.end method

.method public addTip(Landroid/view/View;Ljava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;
    .locals 3
    .parameter "targetView"
    .parameter "text"
    .parameter "withArrow"

    .prologue
    const/4 v2, -0x1

    .line 894
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 895
    .local v0, targetRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0, v2, p2, p3}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v1

    return-object v1
.end method

.method public addTip(Ljava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x12

    .line 1050
    const-string v2, "QuickTips"

    const-string v3, "add Tips string only"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$000()I

    move-result v2

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2100()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 1052
    .local v0, TextWidth:I
    new-instance v1, Lcom/htc/widget/QuickTips$TipText;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 1053
    .local v1, item:Lcom/htc/widget/QuickTips$TipText;
    const/16 v2, -0x2710

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(II)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v2

    invoke-virtual {v1, v5}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    .line 1055
    return-object v1
.end method
