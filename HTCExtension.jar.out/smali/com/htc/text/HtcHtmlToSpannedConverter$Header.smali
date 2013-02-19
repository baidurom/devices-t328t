.class Lcom/htc/text/HtcHtmlToSpannedConverter$Header;
.super Ljava/lang/Object;
.source "HtcHtmlToSpannedConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/HtcHtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 577
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput p1, p0, Lcom/htc/text/HtcHtmlToSpannedConverter$Header;->mLevel:I

    .line 579
    return-void
.end method

.method static synthetic access$000(Lcom/htc/text/HtcHtmlToSpannedConverter$Header;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 570
    iget v0, p0, Lcom/htc/text/HtcHtmlToSpannedConverter$Header;->mLevel:I

    return v0
.end method
