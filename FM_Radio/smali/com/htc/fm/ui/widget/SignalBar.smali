.class public Lcom/htc/fm/ui/widget/SignalBar;
.super Landroid/widget/RelativeLayout;
.source "SignalBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/ui/widget/SignalBar$1;,
        Lcom/htc/fm/ui/widget/SignalBar$Level;
    }
.end annotation


# static fields
.field private static final COUNT:I = 0x4

.field private static final DEFAULT_MAX:I = 0x9

.field private static final DEFAULT_OFFRES:I = 0x7f020021

.field private static final DEFAULT_ONRES:I = 0x7f020022

.field private static final DEFAULT_SPACE:I = 0xb


# instance fields
.field private mLevels:[Lcom/htc/fm/ui/widget/SignalBar$Level;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 25
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fm/ui/widget/SignalBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/fm/ui/widget/SignalBar$Level;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/SignalBar;->mLevels:[Lcom/htc/fm/ui/widget/SignalBar$Level;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/ui/widget/SignalBar;->initLevels(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private initLevels(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    sget-object v2, Lcom/htc/fm/R$styleable;->SignalBar:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 35
    .local v12, attrArray:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v12, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 36
    .local v5, maxLevel:I
    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-virtual {v12, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 37
    .local v6, space:I
    const/4 v2, 0x2

    const v3, 0x7f020022

    invoke-virtual {v12, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 38
    .local v7, onResID:I
    const/4 v2, 0x3

    const v3, 0x7f020021

    invoke-virtual {v12, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 39
    .local v8, offResID:I
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 41
    .local v10, isMirror:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fm/ui/widget/SignalBar;->mLevels:[Lcom/htc/fm/ui/widget/SignalBar$Level;

    array-length v2, v2

    if-ge v13, v2, :cond_4

    .line 42
    rem-int/lit8 v2, v13, 0x2

    if-nez v2, :cond_0

    const/4 v9, 0x1

    .line 43
    .local v9, isReversed:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fm/ui/widget/SignalBar;->mLevels:[Lcom/htc/fm/ui/widget/SignalBar$Level;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v13, v2, :cond_1

    const/4 v14, 0x1

    .line 44
    .local v14, isLeft:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/SignalBar;->mLevels:[Lcom/htc/fm/ui/widget/SignalBar$Level;

    move-object/from16 v16, v0

    new-instance v2, Lcom/htc/fm/ui/widget/SignalBar$Level;

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v11}, Lcom/htc/fm/ui/widget/SignalBar$Level;-><init>(Lcom/htc/fm/ui/widget/SignalBar;Landroid/content/Context;IIIIZZLcom/htc/fm/ui/widget/SignalBar$1;)V

    aput-object v2, v16, v13

    .line 45
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v15, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v14, :cond_2

    const/16 v2, 0x9

    :goto_3
    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47
    if-eqz v9, :cond_3

    const/16 v2, 0xc

    :goto_4
    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fm/ui/widget/SignalBar;->mLevels:[Lcom/htc/fm/ui/widget/SignalBar$Level;

    aget-object v2, v2, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/htc/fm/ui/widget/SignalBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 42
    .end local v9           #isReversed:Z
    .end local v14           #isLeft:Z
    .end local v15           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 43
    .restart local v9       #isReversed:Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    .line 46
    .restart local v14       #isLeft:Z
    .restart local v15       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v2, 0xb

    goto :goto_3

    .line 47
    :cond_3
    const/16 v2, 0xa

    goto :goto_4

    .line 50
    .end local v9           #isReversed:Z
    .end local v14           #isLeft:Z
    .end local v15           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    return-void
.end method


# virtual methods
.method public setRssi(I)V
    .locals 4
    .parameter "rssi"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/fm/ui/widget/SignalBar;->mLevels:[Lcom/htc/fm/ui/widget/SignalBar$Level;

    .local v0, arr$:[Lcom/htc/fm/ui/widget/SignalBar$Level;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 54
    .local v3, level:Lcom/htc/fm/ui/widget/SignalBar$Level;
    #calls: Lcom/htc/fm/ui/widget/SignalBar$Level;->setLevel(I)V
    invoke-static {v3, p1}, Lcom/htc/fm/ui/widget/SignalBar$Level;->access$100(Lcom/htc/fm/ui/widget/SignalBar$Level;I)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v3           #level:Lcom/htc/fm/ui/widget/SignalBar$Level;
    :cond_0
    return-void
.end method
