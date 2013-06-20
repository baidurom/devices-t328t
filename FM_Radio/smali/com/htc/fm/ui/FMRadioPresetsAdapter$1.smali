.class Lcom/htc/fm/ui/FMRadioPresetsAdapter$1;
.super Ljava/lang/Object;
.source "FMRadioPresetsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

.field final synthetic val$deleteButtonPosition:I


# direct methods
.method constructor <init>(Lcom/htc/fm/ui/FMRadioPresetsAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter$1;->this$0:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    iput p2, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter$1;->val$deleteButtonPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter$1;->this$0:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    #getter for: Lcom/htc/fm/ui/FMRadioPresetsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->access$000(Lcom/htc/fm/ui/FMRadioPresetsAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/fm/activity/FMRadioPresets;

    iget v3, p0, Lcom/htc/fm/ui/FMRadioPresetsAdapter$1;->val$deleteButtonPosition:I

    const-wide/32 v4, 0x7f05002a

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fm/activity/FMRadioPresets;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 272
    return-void
.end method
