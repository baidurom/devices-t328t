.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WWishlistAppTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

.field public static final enum Application:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

.field public static final enum Books:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

.field public static final enum Music:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2057
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    const-string v1, "Application"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;->Application:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    .line 2058
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    const-string v1, "Books"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;->Books:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    .line 2059
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    const-string v1, "Music"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;->Music:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    .line 2056
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;->Application:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;->Books:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;->Music:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2056
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;
    .locals 1
    .parameter "name"

    .prologue
    .line 2056
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;
    .locals 1

    .prologue
    .line 2056
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist$WWishlistAppTypes;

    return-object v0
.end method
