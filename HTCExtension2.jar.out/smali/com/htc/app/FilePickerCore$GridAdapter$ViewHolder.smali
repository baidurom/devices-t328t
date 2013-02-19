.class Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FilePickerCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore$GridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field iv:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/htc/app/FilePickerCore$GridAdapter;

.field tv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerCore$GridAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2514
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;->this$1:Lcom/htc/app/FilePickerCore$GridAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerCore$GridAdapter;Lcom/htc/app/FilePickerCore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2514
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;-><init>(Lcom/htc/app/FilePickerCore$GridAdapter;)V

    return-void
.end method
