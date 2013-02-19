.class public Lcom/htc/widget/DropDownList$PassThroughClickListener;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PassThroughClickListener"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0
    .parameter

    .prologue
    .line 2511
    iput-object p1, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/widget/DropDownList$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2511
    iput-object p1, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v0, v0, Lcom/htc/widget/DropDownList;->mOnClickBeforePopupShownListener:Lcom/htc/widget/DropDownList$OnClickBeforePopupShownListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->this$0:Lcom/htc/widget/DropDownList;

    iget-object v0, v0, Lcom/htc/widget/DropDownList;->mOnClickBeforePopupShownListener:Lcom/htc/widget/DropDownList$OnClickBeforePopupShownListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/DropDownList$OnClickBeforePopupShownListener;->onClick(Landroid/view/View;)V

    .line 2520
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->this$0:Lcom/htc/widget/DropDownList;

    iget-boolean v0, v0, Lcom/htc/widget/DropDownList;->mIsDropDownEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->this$0:Lcom/htc/widget/DropDownList;

    #calls: Lcom/htc/widget/DropDownList;->onClickImpl(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/htc/widget/DropDownList;->access$1200(Lcom/htc/widget/DropDownList;Landroid/view/View;)V

    .line 2521
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2522
    :cond_2
    return-void
.end method
