.class public final enum Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;
.super Ljava/lang/Enum;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/Animation$ResizeParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResizeTiming"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

.field public static final enum AfterAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

.field public static final enum BeforeAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

.field public static final enum WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    const-string v1, "BeforeAnimation"

    invoke-direct {v0, v1, v2}, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->BeforeAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    .line 130
    new-instance v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    const-string v1, "WithAnimation"

    invoke-direct {v0, v1, v3}, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    .line 131
    new-instance v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    const-string v1, "AfterAnimation"

    invoke-direct {v0, v1, v4}, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->AfterAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    sget-object v1, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->BeforeAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->AfterAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->$VALUES:[Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;
    .locals 1
    .parameter "name"

    .prologue
    .line 128
    const-class v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    return-object v0
.end method

.method public static values()[Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->$VALUES:[Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    invoke-virtual {v0}, [Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    return-object v0
.end method
