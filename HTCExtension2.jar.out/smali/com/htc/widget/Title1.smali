.class public Lcom/htc/widget/Title1;
.super Landroid/widget/RelativeLayout;
.source "Title1.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private searchbtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title1;->searchbtn:Landroid/widget/Button;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title1;->searchbtn:Landroid/widget/Button;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/Title1;->searchbtn:Landroid/widget/Button;

    .line 50
    return-void
.end method


# virtual methods
.method public HideSearchBtn()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public ShowSearchBtn()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setTitle1(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 53
    const v1, 0x202008e

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    return-void
.end method

.method public setTitle1(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 60
    const v1, 0x202008e

    invoke-virtual {p0, v1}, Lcom/htc/widget/Title1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
