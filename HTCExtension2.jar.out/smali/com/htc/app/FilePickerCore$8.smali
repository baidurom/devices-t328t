.class Lcom/htc/app/FilePickerCore$8;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->showCloudPickerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 2245
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$8;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2248
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$8;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 2249
    .local v0, dataSourceType:I
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$8;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$4200(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerCloudHelper;->signIn(I)V

    .line 2250
    return-void
.end method
