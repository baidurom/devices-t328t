.class public final Lcom/htc/provider/HtcContactsContract$Email;
.super Lcom/htc/provider/HtcContactsContract$DefaultActionHelper;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation


# static fields
.field public static IS_DEFAULT_ACTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1981
    const-string v0, "data9"

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Email;->IS_DEFAULT_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1976
    invoke-direct {p0}, Lcom/htc/provider/HtcContactsContract$DefaultActionHelper;-><init>()V

    return-void
.end method
