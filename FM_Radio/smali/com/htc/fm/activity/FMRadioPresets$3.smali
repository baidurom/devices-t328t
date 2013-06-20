.class Lcom/htc/fm/activity/FMRadioPresets$3;
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
    .line 267
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioPresets$3;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 269
    const-string v0, "FMRadioPresets"

    const-string v1, "+mBtnDelete.setOnClickListener.onClick()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$3;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #calls: Lcom/htc/fm/activity/FMRadioPresets;->deleteSelectedItem()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioPresets;->access$200(Lcom/htc/fm/activity/FMRadioPresets;)V

    .line 271
    const-string v0, "FMRadioPresets"

    const-string v1, "-mBtnDelete.setOnClickListener.onClick()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method
