.class public Lcom/htc/widget/AutoMotiveHtcCheckTextLayout;
.super Lcom/htc/widget/HtcCompoundTextLayout;
.source "AutoMotiveHtcCheckTextLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcCompoundTextLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/htc/widget/AutoMotiveHtcCheckTextLayout;->init(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcCompoundTextLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/htc/widget/AutoMotiveHtcCheckTextLayout;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcCompoundTextLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1}, Lcom/htc/widget/AutoMotiveHtcCheckTextLayout;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 33
    const-string v2, "automotive_common_circle_outer"

    const-string v3, "automotive_common_circle_pressed"

    const-string v4, "automotive_common_transport_small_rest"

    const-string v5, "automotive_common_checkbox_rest"

    const-string v6, "automotive_common_checkbox_on"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/AutoMotiveHtcCheckTextLayout;->setUpResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
