.class public Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatService;
.super Ljava/lang/Object;
.source "HtcWrapCatService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .parameter "phone_type"

    .prologue
    .line 8
    invoke-static {p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    return-object v0
.end method
