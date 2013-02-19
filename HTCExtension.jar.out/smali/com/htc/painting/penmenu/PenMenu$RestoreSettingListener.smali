.class Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;
.super Ljava/lang/Object;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreSettingListener"
.end annotation


# instance fields
.field mPenMenu:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 4069
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4070
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    .line 4071
    return-void
.end method


# virtual methods
.method public onRestoreFinish(I)V
    .locals 2
    .parameter "token"

    .prologue
    .line 4077
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    new-instance v1, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;-><init>(Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;I)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->post(Ljava/lang/Runnable;)Z

    .line 4103
    return-void
.end method
