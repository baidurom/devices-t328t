.class Lcom/htc/widget/TabSwitchActivity$1;
.super Ljava/lang/Object;
.source "TabSwitchActivity.java"

# interfaces
.implements Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/TabSwitchActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/TabSwitchActivity;


# direct methods
.method constructor <init>(Lcom/htc/widget/TabSwitchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchDown()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchActivity;->onTabTouchDown()V

    .line 140
    return-void
.end method

.method public onTouchMove()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchActivity;->onTabTouchMove()V

    .line 144
    return-void
.end method

.method public onTouchUp()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchActivity;->onTabTouchUp()V

    .line 148
    return-void
.end method
