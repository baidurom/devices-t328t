.class Lcom/baidu/service/power/Policy$3;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/Policy;->showAlertDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/power/Policy;

.field final synthetic val$tipsView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/Policy;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/baidu/service/power/Policy$3;->this$0:Lcom/baidu/service/power/Policy;

    iput-object p2, p0, Lcom/baidu/service/power/Policy$3;->val$tipsView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 340
    if-eqz p2, :cond_0

    .line 341
    iget-object v0, p0, Lcom/baidu/service/power/Policy$3;->val$tipsView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/baidu/service/power/Policy$3;->val$tipsView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
