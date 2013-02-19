.class public final Lcom/htc/provider/IccContract$IccPhonebook;
.super Ljava/lang/Object;
.source "IccContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/IccContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IccPhonebook"
.end annotation


# static fields
.field public static final PHONE_TYPE:Ljava/lang/String; = "phoneType"

.field public static final PHONE_TYPE_COLUMN_TYPE:I = 0x1

.field public static final RECORD_COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final RECORD_COLUMN_RECORD:I = 0x0

.field public static final RECORD_NUMBER:Ljava/lang/String; = "recordNumber"

.field public static final RECORD_PHONE_TYPE_COLUMN_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "recordNumber"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/provider/IccContract$IccPhonebook;->RECORD_COLUMN_NAMES:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recordNumber"

    aput-object v1, v0, v2

    const-string v1, "phoneType"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/provider/IccContract$IccPhonebook;->RECORD_PHONE_TYPE_COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
