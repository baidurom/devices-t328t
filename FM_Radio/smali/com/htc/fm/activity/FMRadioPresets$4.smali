.class Lcom/htc/fm/activity/FMRadioPresets$4;
.super Ljava/lang/Object;
.source "FMRadioPresets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/activity/FMRadioPresets;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/activity/FMRadioPresets;


# direct methods
.method constructor <init>(Lcom/htc/fm/activity/FMRadioPresets;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioPresets$4;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 276
    const-string v0, "FMRadioPresets"

    const-string v1, "+mBtnCancel.setOnClickListener.onClick()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$4;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioPresets;->onBackPressed()V

    .line 278
    const-string v0, "FMRadioPresets"

    const-string v1, "-mBtnCancel.setOnClickListener.onClick()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method
