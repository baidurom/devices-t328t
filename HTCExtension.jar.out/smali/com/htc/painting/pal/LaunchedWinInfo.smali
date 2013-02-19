.class public Lcom/htc/painting/pal/LaunchedWinInfo;
.super Ljava/lang/Object;
.source "LaunchedWinInfo.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mPenWorkingMode:I

.field public final mTitle:Ljava/lang/String;

.field public final mWindowType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "pkgName"
    .parameter "title"
    .parameter "penMode"
    .parameter "type"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mPackageName:Ljava/lang/String;

    .line 29
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mTitle:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mPenWorkingMode:I

    .line 31
    iput p4, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mWindowType:I

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mPenWorkingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
