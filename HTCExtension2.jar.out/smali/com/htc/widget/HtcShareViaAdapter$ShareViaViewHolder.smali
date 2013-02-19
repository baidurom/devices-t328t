.class Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;
.super Ljava/lang/Object;
.source "HtcShareViaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcShareViaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareViaViewHolder"
.end annotation


# instance fields
.field icon:Lcom/htc/widget/HtcListItemColorIcon;

.field text:Lcom/htc/widget/HtcListItem1LineCenteredText;

.field final synthetic this$0:Lcom/htc/widget/HtcShareViaAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcShareViaAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->this$0:Lcom/htc/widget/HtcShareViaAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcShareViaAdapter;Lcom/htc/widget/HtcShareViaAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;-><init>(Lcom/htc/widget/HtcShareViaAdapter;)V

    return-void
.end method
