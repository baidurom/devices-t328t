.class Lcom/htc/widget/ActionBarDropDown$4;
.super Ljava/lang/Object;
.source "ActionBarDropDown.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarDropDown;->setupAutomotiveMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarDropDown;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarDropDown;)V
    .locals 0
    .parameter

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown$4;->this$0:Lcom/htc/widget/ActionBarDropDown;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown$4;->this$0:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->show()V

    .line 1084
    return-void
.end method
