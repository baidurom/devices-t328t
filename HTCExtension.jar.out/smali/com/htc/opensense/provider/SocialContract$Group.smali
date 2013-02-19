.class public Lcom/htc/opensense/provider/SocialContract$Group;
.super Ljava/lang/Object;
.source "SocialContract.java"

# interfaces
.implements Lcom/htc/opensense/provider/SocialContract$GroupColumn;
.implements Lcom/htc/opensense/provider/SocialContract$GroupParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/provider/SocialContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.opensense.group"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.opensense.group"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT:Ljava/lang/String; = "group_account_type DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Lcom/htc/opensense/provider/SocialContract;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "group0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/provider/SocialContract$Group;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUriWithAccNameAccType(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "accName"
    .parameter "accType"

    .prologue
    .line 321
    sget-object v1, Lcom/htc/opensense/provider/SocialContract$Group;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 322
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "group_account_name"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 323
    const-string v1, "group_account_type"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 324
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static buildUriWithTimestampNotIn(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3
    .parameter "accName"
    .parameter "accType"
    .parameter "time"

    .prologue
    .line 307
    sget-object v1, Lcom/htc/opensense/provider/SocialContract$Group;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 308
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "group_account_name"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 309
    const-string v1, "group_account_type"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 310
    const-string v1, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 312
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
