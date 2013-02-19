.class public Lcom/htc/widget/Title13;
.super Landroid/widget/RelativeLayout;
.source "Title13.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title13;->mContext:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/htc/widget/Title13;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title13;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/htc/widget/Title13;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public setSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 126
    return-void
.end method

.method public setSearchGone()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public setSearchIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 112
    return-void
.end method

.method public setSearchVisible()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
