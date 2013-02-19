.class public Lcom/htc/widget/HtcRadioTextLayout;
.super Lcom/htc/widget/HtcCompoundTextLayout;
.source "HtcRadioTextLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcCompoundTextLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRadioTextLayout;->init(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcCompoundTextLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRadioTextLayout;->init(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcCompoundTextLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRadioTextLayout;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 31
    const-string v2, "common_circle_outer"

    const-string v3, "common_circle_pressed"

    const-string v4, "common_circle_rest"

    const-string v5, "common_radiobutton_rest"

    const-string v6, "common_radiobutton_on"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcRadioTextLayout;->setUpResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
