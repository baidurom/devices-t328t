.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$SubGsmCarriers;
.super Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;
.source "HtcWrapTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubGsmCarriers"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1540
    const-string v0, "content://subgsmapn/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$SubGsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1536
    invoke-direct {p0}, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;-><init>()V

    return-void
.end method
