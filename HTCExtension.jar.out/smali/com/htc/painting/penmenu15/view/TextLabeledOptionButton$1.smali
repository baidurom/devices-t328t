.class Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton$1;
.super Ljava/lang/Object;
.source "TextLabeledOptionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->init(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton$1;->this$0:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton$1;->this$0:Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/view/TextLabeledOptionButton;->performClick()Z

    .line 123
    return-void
.end method
