.class public Lcom/htc/util/calendar/HtcCalendarManager;
.super Ljava/lang/Object;
.source "HtcCalendarManager.java"

# interfaces
.implements Lcom/htc/util/calendar/notes/HtcAssociatedNotesFlag;


# static fields
.field private static final ADD_ALPHA_MASK:I = -0x1000000

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final B_MASK:I = 0xff

.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field private static final COLOR_MATRIX_RES:[I = null

.field private static final DEBUG:Z = false

.field private static final Distance:I = 0x96

.field public static final EXTRA_EVENT_URI:Ljava/lang/String; = "com.htc.calendar.event_uri"

.field private static final G_MASK:I = 0xff00

.field private static final MSG_UI_UPDATE_PROGRESSBAR:I = 0x1

.field private static final RESTORE_TYPE_KEEP_PHONE_CALENDAR:I = 0x1

.field private static final RESTORE_TYPE_SD_CALENDAR:I = 0x2

.field private static final R_MASK:I = 0xff0000

.field private static final TAG:Ljava/lang/String; = "HtcCalendarManager"

.field private static final color1:I = 0xd06b64

.field private static final color10:I = 0xb3dc6c

.field private static final color11:I = 0xb2b43d

.field private static final color12:I = 0xfbe983

.field private static final color13:I = 0xffad46

.field private static final color14:I = 0xff7537

.field private static final color15:I = 0xcca6ac

.field private static final color16:I = 0xb99aff

.field private static final color17:I = 0x768594

.field private static final color18:I = 0x9fc6e7

.field private static final color19:I = 0x739b94

.field private static final color2:I = 0xf691b2

.field private static final color20:I = 0x96986a

.field private static final color21:I = 0xb79870

.field private static final color22:I = 0xb94118

.field private static final color23:I = 0xf83a22

.field private static final color24:I = 0xb3289b

.field private static final color25:I = 0xa47ae2

.field private static final color26:I = 0x425795

.field private static final color27:I = 0x282a9d

.field private static final color28:I = 0x16a765

.field private static final color29:I = 0x4c9926

.field private static final color3:I = 0xcd74e6

.field private static final color30:I = 0x7bd148

.field private static final color31:I = 0x97ad1f

.field private static final color32:I = 0xc38810

.field private static final color33:I = 0xc86b18

.field private static final color34:I = 0xac725e

.field private static final color35:I = 0x7d3b11

.field private static final color36:I = 0x99105e

.field private static final color37:I = 0x9a9cff

.field private static final color38:I = 0x9fe1e7

.field private static final color39:I = 0xcabdbf

.field private static final color4:I = 0x784bd0

.field private static final color40:I = 0x369774

.field private static final color41:I = 0xfad165

.field private static final color42:I = 0x9b1c22

.field private static final color5:I = 0x4986e7

.field private static final color6:I = 0x5476d0

.field private static final color7:I = 0x42d692

.field private static final color8:I = 0x92e1c0

.field private static final color9:I = 0x40a441

.field private static final colorMappingToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static me:Lcom/htc/util/calendar/HtcCalendarManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    .line 339
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xd06b64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xf691b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xcd74e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x784bd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x4986e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x5476d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x42d692

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x92e1c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x40a441

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb3dc6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb2b43d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xfbe983

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xffad46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xff7537

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xcca6ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb99aff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x768594

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x9fc6e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x739b94

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x96986a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb79870

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb94118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xf83a22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb3289b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xa47ae2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x425795

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x282a9d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x16a765

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x4c9926

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x7bd148

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x97ad1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xc38810

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xc86b18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xac725e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x7d3b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x99105e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x9a9cff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x9fe1e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xcabdbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x369774

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xfad165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x9b1c22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const/16 v0, 0x2a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->COLOR_MATRIX_RES:[I

    .line 677
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-void

    .line 383
    nop

    :array_0
    .array-data 0x4
        0x64t 0x6bt 0xd0t 0x0t
        0xb2t 0x91t 0xf6t 0x0t
        0xe6t 0x74t 0xcdt 0x0t
        0xd0t 0x4bt 0x78t 0x0t
        0xe7t 0x86t 0x49t 0x0t
        0xd0t 0x76t 0x54t 0x0t
        0x92t 0xd6t 0x42t 0x0t
        0xc0t 0xe1t 0x92t 0x0t
        0x41t 0xa4t 0x40t 0x0t
        0x6ct 0xdct 0xb3t 0x0t
        0x3dt 0xb4t 0xb2t 0x0t
        0x83t 0xe9t 0xfbt 0x0t
        0x46t 0xadt 0xfft 0x0t
        0x37t 0x75t 0xfft 0x0t
        0xact 0xa6t 0xcct 0x0t
        0xfft 0x9at 0xb9t 0x0t
        0x94t 0x85t 0x76t 0x0t
        0xe7t 0xc6t 0x9ft 0x0t
        0x94t 0x9bt 0x73t 0x0t
        0x6at 0x98t 0x96t 0x0t
        0x70t 0x98t 0xb7t 0x0t
        0x18t 0x41t 0xb9t 0x0t
        0x22t 0x3at 0xf8t 0x0t
        0x9bt 0x28t 0xb3t 0x0t
        0xe2t 0x7at 0xa4t 0x0t
        0x95t 0x57t 0x42t 0x0t
        0x9dt 0x2at 0x28t 0x0t
        0x65t 0xa7t 0x16t 0x0t
        0x26t 0x99t 0x4ct 0x0t
        0x48t 0xd1t 0x7bt 0x0t
        0x1ft 0xadt 0x97t 0x0t
        0x10t 0x88t 0xc3t 0x0t
        0x18t 0x6bt 0xc8t 0x0t
        0x5et 0x72t 0xact 0x0t
        0x11t 0x3bt 0x7dt 0x0t
        0x5et 0x10t 0x99t 0x0t
        0xfft 0x9ct 0x9at 0x0t
        0xe7t 0xe1t 0x9ft 0x0t
        0xbft 0xbdt 0xcat 0x0t
        0x74t 0x97t 0x36t 0x0t
        0x65t 0xd1t 0xfat 0x0t
        0x22t 0x1ct 0x9bt 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 63
    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcCalendarManager contruct by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    .line 68
    :goto_0
    iput-object p1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 70
    return-void

    .line 66
    :cond_0
    const-string v0, "HtcCalendarManager contruct by null??"

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private Debug(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 756
    return-void
.end method

.method private compareColor(IIIIII)D
    .locals 28
    .parameter "r1"
    .parameter "g1"
    .parameter "b1"
    .parameter "r2"
    .parameter "g2"
    .parameter "b2"

    .prologue
    .line 321
    const-wide v22, 0x3fd322d0e5604189L

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, 0x3fe2c8b439581062L

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fbd2f1a9fbe76c9L

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v18, v22, v24

    .line 322
    .local v18, y1:D
    const-wide v22, -0x403d2ad81adea897L

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, -0x402d835158b827faL

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fdbe76c8b439581L

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v10, v22, v24

    .line 323
    .local v10, u1:D
    const-wide v22, 0x3fe3ae147ae147aeL

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, -0x401f8533b1077469L

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x404665bea0ba1f4bL

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v14, v22, v24

    .line 326
    .local v14, v1:D
    const-wide v22, 0x3fd322d0e5604189L

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, 0x3fe2c8b439581062L

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fbd2f1a9fbe76c9L

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v20, v22, v24

    .line 327
    .local v20, y2:D
    const-wide v22, -0x403d2ad81adea897L

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, -0x402d835158b827faL

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fdbe76c8b439581L

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v12, v22, v24

    .line 328
    .local v12, u2:D
    const-wide v22, 0x3fe3ae147ae147aeL

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, -0x401f8533b1077469L

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x404665bea0ba1f4bL

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v16, v22, v24

    .line 330
    .local v16, v2:D
    sub-double v22, v18, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 331
    .local v6, diff_y:D
    sub-double v22, v10, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 332
    .local v2, diff_u:D
    sub-double v22, v14, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 333
    .local v4, diff_v:D
    const-wide/high16 v22, 0x4000

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide/high16 v24, 0x4000

    move-wide/from16 v0, v24

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000

    move-wide/from16 v0, v24

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 334
    .local v8, distance:D
    return-wide v8
.end method

.method private getImportEventID(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 5
    .parameter "c"
    .parameter "importGUID"

    .prologue
    const/4 v2, -0x1

    .line 832
    if-nez p1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return v2

    .line 837
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 840
    const/4 v2, -0x1

    .line 842
    .local v2, imporEventID:I
    const-string v4, "iCalGUID"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 843
    .local v1, colUID:I
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 845
    .local v0, colEventID:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 848
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 849
    .local v3, uid:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 850
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 851
    goto :goto_0

    .line 853
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    const-class v1, Lcom/htc/util/calendar/HtcCalendarManager;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/htc/util/calendar/HtcCalendarManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/HtcCalendarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iget-object v0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 81
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 84
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iget-object v0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 85
    if-eqz p0, :cond_3

    .line 86
    const-string v0, "HtcCalendarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationContext() should not be null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iput-object p0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 92
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 88
    :cond_3
    const-string v0, "HtcCalendarManager"

    const-string v1, "getApplicationContext() should not be null: null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 12
    .parameter "cr"
    .parameter "calendar_id"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 622
    .local p4, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p5, alarms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 623
    .local v6, idx:I
    const/4 v9, 0x0

    .line 624
    .local v9, numberCal:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 628
    .local v3, cv:Landroid/content/ContentValues;
    move-object v1, v3

    .line 629
    .local v1, cacheContentValue:Landroid/content/ContentValues;
    const-string v10, "calendar_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 632
    sget-object v10, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v10, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 633
    .local v7, newEvent:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 634
    .local v8, newEventId:Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 636
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 637
    .local v2, cacheContentValue2:Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 638
    const-string v10, "hasAlarm"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    .line 639
    .local v4, hasAlarm:Z
    :goto_1
    if-eqz v4, :cond_0

    .line 641
    const-string v10, "event_id"

    invoke-virtual {v2, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    sget-object v10, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v10, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 646
    .end local v4           #hasAlarm:Z
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 647
    goto :goto_0

    .line 638
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 649
    .end local v1           #cacheContentValue:Landroid/content/ContentValues;
    .end local v2           #cacheContentValue2:Landroid/content/ContentValues;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v7           #newEvent:Landroid/net/Uri;
    .end local v8           #newEventId:Ljava/lang/String;
    :cond_2
    return v9
.end method

.method private importCalendarOnBackground(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Handler;Landroid/database/Cursor;I)I
    .locals 14
    .parameter "cr"
    .parameter "calendar_id"
    .parameter
    .parameter
    .parameter "progressHandler"
    .parameter "existEvents"
    .parameter "restoreType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/database/Cursor;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 783
    .local p4, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p5, alarms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v12, 0x0

    .line 784
    .local v12, numberCal:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 785
    .local v13, size:I
    const/4 v10, 0x0

    .line 786
    .local v10, isExist:Z
    const-string v3, ""

    .line 787
    .local v3, importGUID:Ljava/lang/String;
    const/4 v4, -0x1

    .line 789
    .local v4, importEventID:I
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 792
    .local v7, bundle:Landroid/os/Bundle;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 794
    .local v8, cv:Landroid/content/ContentValues;
    const-string v1, "iCalGUID"

    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 795
    move-object/from16 v0, p7

    invoke-direct {p0, v0, v3}, Lcom/htc/util/calendar/HtcCalendarManager;->getImportEventID(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 797
    move-object v5, v8

    .line 798
    .local v5, contentValueEvent:Landroid/content/ContentValues;
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 800
    .local v6, contentValueAlarm:Landroid/content/ContentValues;
    const-string v1, "calendar_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 802
    const/4 v1, -0x1

    if-eq v4, v1, :cond_1

    .line 804
    packed-switch p8, :pswitch_data_0

    .line 815
    :goto_1
    :pswitch_0
    add-int/lit8 v12, v12, 0x1

    .line 817
    if-eqz p6, :cond_0

    .line 818
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 819
    .local v11, msg:Landroid/os/Message;
    const-string v1, "value"

    invoke-virtual {v7, v1, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 820
    const-string v1, "max"

    invoke-virtual {v7, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 822
    invoke-virtual {v11, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 823
    const/4 v1, 0x1

    iput v1, v11, Landroid/os/Message;->what:I

    .line 824
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v11           #msg:Landroid/os/Message;
    :pswitch_1
    move-object v1, p0

    move-object v2, p1

    .line 809
    invoke-direct/range {v1 .. v6}, Lcom/htc/util/calendar/HtcCalendarManager;->updateDB(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/content/ContentValues;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 813
    :cond_1
    invoke-direct {p0, p1, v5, v6}, Lcom/htc/util/calendar/HtcCalendarManager;->insertDB(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 827
    .end local v5           #contentValueEvent:Landroid/content/ContentValues;
    .end local v6           #contentValueAlarm:Landroid/content/ContentValues;
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_2
    return v12

    .line 804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private insertDB(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "cr"
    .parameter "contentValueEvent"
    .parameter "contentValueAlarm"

    .prologue
    const/4 v0, 0x1

    .line 861
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 863
    .local v1, newEvent:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 864
    .local v2, newEventId:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 865
    const-string v3, "hasAlarm"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 866
    .local v0, hasAlarm:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 868
    const-string v3, "event_id"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 874
    .end local v0           #hasAlarm:Z
    :cond_0
    return-void

    .line 865
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDB(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 8
    .parameter "cr"
    .parameter "importGUID"
    .parameter "importEventID"
    .parameter "contentValueEvent"
    .parameter "contentValueAlarm"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 878
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iCalGUID = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 879
    .local v3, where:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, alarm_where:Ljava/lang/String;
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, p4, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 883
    if-eqz p5, :cond_0

    .line 884
    const-string v5, "hasAlarm"

    invoke-virtual {p4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_1

    move v2, v4

    .line 885
    .local v2, hasAlarm:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 887
    const-string v5, "event_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p5, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, p5, v0, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 893
    .local v1, count:I
    if-ge v1, v4, :cond_0

    .line 900
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4, p5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 904
    .end local v1           #count:I
    .end local v2           #hasAlarm:Z
    :cond_0
    return-void

    .line 884
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildEvents(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "vCalString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    new-instance v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>()V

    .line 607
    .local v0, cal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    invoke-virtual {v0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->parseVCalendar(Ljava/lang/String;)Z

    move-result v1

    .line 608
    .local v1, isPass:Z
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 609
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventsCV()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    .locals 2
    .parameter "eventId"

    .prologue
    .line 592
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 593
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v1

    return-object v1
.end method

.method public buildVCalendar(Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    .locals 2
    .parameter "uniEvent"

    .prologue
    .line 579
    new-instance v0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;-><init>()V

    iget-object v1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->buildVCalendar(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v0

    return-object v0
.end method

.method public checkIfAssociatedNotes(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "uniEventUri"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/notes/NotesHelper;->checkIfAssociatedNotes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public generateEventUri(JJJ)Landroid/net/Uri;
    .locals 1
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 171
    invoke-static/range {p1 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUri(JJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateEventUriString(JJJ)Ljava/lang/String;
    .locals 1
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 159
    invoke-static/range {p1 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUriString(JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "eventId"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventUriString(J)Ljava/lang/String;
    .locals 1
    .parameter "eventId"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventUriString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventVCalendarEventTitleUri(J)Landroid/net/Uri;
    .locals 12
    .parameter "eventId"

    .prologue
    .line 222
    iget-object v9, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventVCalendarEventTitleUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v6

    .line 224
    .local v6, ret:Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 225
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, title:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v8

    .line 227
    .local v8, vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    const/4 v2, 0x0

    .line 233
    .local v2, fout:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "vcalendar"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, pathStr:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 236
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 239
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    .local v1, fileout:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 242
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .local v3, fout:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v8}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 253
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 259
    .end local v1           #fileout:Ljava/io/File;
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v4           #path:Ljava/io/File;
    .end local v5           #pathStr:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    :cond_1
    :goto_0
    return-object v6

    .line 254
    .restart local v1       #fileout:Ljava/io/File;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    .restart local v4       #path:Ljava/io/File;
    .restart local v5       #pathStr:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    .restart local v8       #vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 257
    goto :goto_0

    .line 245
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileout:Ljava/io/File;
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v4           #path:Ljava/io/File;
    .end local v5           #pathStr:Ljava/lang/String;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 246
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v9, "HtcCalendarManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateTheEventVCalendarEventTitleUri() #1 should not be null:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 254
    :catch_2
    move-exception v0

    .line 255
    .local v0, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 257
    goto :goto_0

    .line 247
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 248
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v9, "HtcCalendarManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateTheEventVCalendarEventTitleUri() #2 should not be null:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 249
    const/4 v6, 0x0

    .line 253
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 254
    :catch_4
    move-exception v0

    .line 255
    const/4 v6, 0x0

    .line 257
    goto :goto_0

    .line 252
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 253
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 256
    :goto_4
    throw v9

    .line 254
    :catch_5
    move-exception v0

    .line 255
    .restart local v0       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_4

    .line 252
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fileout:Ljava/io/File;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    .restart local v4       #path:Ljava/io/File;
    .restart local v5       #pathStr:Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 247
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 245
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public generateUniEventUri(JJJ)Landroid/net/Uri;
    .locals 7
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/util/calendar/tools/UriTools;->generateUniEventUri(Landroid/content/Context;JJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateUniEventUriString(JJJ)Ljava/lang/String;
    .locals 7
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/util/calendar/tools/UriTools;->generateUniEventUriString(Landroid/content/Context;JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedNotesId(Ljava/lang/String;)J
    .locals 2
    .parameter "uniEventUri"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/notes/NotesHelper;->getAssociatedNotesId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttendees(Landroid/net/Uri;I)Ljava/util/ArrayList;
    .locals 16
    .parameter "uri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    const/4 v11, 0x0

    .line 694
    .local v11, member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 695
    .local v1, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/htc/util/calendar/tools/UriTools;->getEventId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v9

    .line 696
    .local v9, event_id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 745
    :goto_0
    return-object v2

    .line 698
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "event_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 702
    .local v15, where:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 708
    :cond_1
    const-string v2, " and "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "attendeeStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 714
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAttendees: where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    .line 717
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attendeeName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ASC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "attendeeEmail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ASC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 723
    .local v13, sort:Ljava/lang/StringBuffer;
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/util/calendar/HtcCalendarManager;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 725
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_3

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 726
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 727
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .restart local v11       #member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    :cond_4
    const-string v2, "attendeeStatus"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 730
    .local v14, status:I
    const-string v2, "attendeeName"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 731
    .local v12, name:Ljava/lang/String;
    const-string v2, "attendeeEmail"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 732
    .local v8, email:Ljava/lang/String;
    const-string v2, "default@htc.calendar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "exchange@htc.calendar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Outlook"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 739
    :cond_5
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 742
    .end local v8           #email:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #status:I
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 743
    :cond_7
    const/4 v7, 0x0

    move-object v2, v11

    .line 745
    goto/16 :goto_0

    .line 737
    .restart local v8       #email:Ljava/lang/String;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v14       #status:I
    :cond_8
    new-instance v2, Lcom/htc/util/calendar/Attendee;

    invoke-direct {v2, v12, v8, v14}, Lcom/htc/util/calendar/Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getAvailableColor()Ljava/lang/Integer;
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 455
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v7, colorUsage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const v1, -0x30cdde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const v1, -0x21a883

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const v1, -0x62b755

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const v1, -0x8fbc51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const v1, -0xfea379

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const v1, -0xe17d78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const v1, -0xde5c85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const v1, -0xd964d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const v1, -0xb7731c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const v1, -0x875709

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const v1, -0x487615

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const v1, -0xe46fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const v1, -0x26ff4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const v1, -0x1998f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const v1, -0x3c99b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const v1, -0x8fb4a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const v1, -0xccb68d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const v1, -0x9ba477

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const v1, -0xf76ea7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const v1, -0x7b8cf3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const v1, -0x3a6ac8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const v1, -0xf287ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const v1, -0x2f949c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const v1, -0x96e4e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const v1, -0x328b1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const v1, -0x87b430

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const v1, -0xb67919

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const v1, -0xab8930

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const v1, -0xbd296e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const v1, -0x6d1e40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const v1, -0xbf5bbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const v1, -0x4c2394

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const v1, -0x4d4bc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const v1, -0x4167d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const/16 v1, -0x52ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const v1, -0x8ac9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const v1, -0x335954

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const v1, -0x466501

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const v1, -0x897a6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const v1, -0x603919

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const v1, -0x8c646c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const v1, -0x696796

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const v1, -0x486790

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const v1, -0x46bee8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const v1, -0x7c5de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const v1, -0x4cd765

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const v1, -0x5b851e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const v1, -0xbda86b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const v1, -0xd7d563

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const v1, -0xe9589b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const v1, -0xb366da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const v1, -0x842eb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const v1, -0x6852e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const v1, -0x3c77f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const v1, -0x3794e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const v1, -0x538da2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const v1, -0x82c4ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const v1, -0x66efa2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const v1, -0x656301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const v1, -0x601e19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const v1, -0x354241

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const v1, -0xc9688c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const v1, -0x52e9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const v1, -0x64e3de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    new-array v2, v13, [Ljava/lang/String;

    const-string v1, "calendar_color"

    aput-object v1, v2, v12

    .line 529
    .local v2, projectArys:[Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 530
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "calendar_color IS NOT NULL "

    .line 531
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 533
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 535
    .local v10, nCnt:I
    const-string v1, "HtcCalendarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " color IS NOT NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    if-lez v10, :cond_5

    .line 539
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    :cond_0
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 543
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 553
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_2
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 557
    .local v8, it:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 558
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 559
    .local v9, key:Ljava/lang/Integer;
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 561
    .local v11, value:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 562
    const-string v1, "HtcCalendarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Avaiable color "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v8           #it:Ljava/util/Iterator;
    .end local v9           #key:Ljava/lang/Integer;
    .end local v10           #nCnt:I
    .end local v11           #value:Ljava/lang/Integer;
    :goto_1
    return-object v9

    .line 546
    .restart local v10       #nCnt:I
    :cond_4
    const-string v1, "HtcCalendarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not find matching for color "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    .end local v10           #nCnt:I
    :cond_5
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1
.end method

.method public getAvailableColorAsset([I)Ljava/lang/Integer;
    .locals 2
    .parameter "drawable_array"

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getAvailableColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 441
    .local v0, color:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 442
    invoke-virtual {p0, v0, p1}, Lcom/htc/util/calendar/HtcCalendarManager;->getMappingColorAssetid(I[I)Ljava/lang/Integer;

    move-result-object v1

    .line 443
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getEvent(Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;
    .locals 1
    .parameter "eventUri"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->getEventInstance(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    return-object v0
.end method

.method public getMappingColorAssetid(I[I)Ljava/lang/Integer;
    .locals 16
    .parameter "color"
    .parameter "drawable_array"

    .prologue
    .line 403
    move-object/from16 v0, p2

    array-length v1, v0

    if-ltz v1, :cond_0

    move-object/from16 v0, p2

    array-length v1, v0

    sget-object v2, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 404
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawable_array length does not equal to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_1
    const v1, 0xffffff

    and-int p1, p1, v1

    .line 409
    :try_start_0
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 424
    :goto_0
    return-object v1

    .line 411
    :catch_0
    move-exception v11

    .line 412
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "HtcCalendarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableColorAsset error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-wide/16 v9, 0x0

    .line 414
    .local v9, diff:D
    const/4 v13, 0x0

    .line 415
    .local v13, matched_color_res:I
    const/4 v12, 0x0

    .local v12, index:I
    :goto_1
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->COLOR_MATRIX_RES:[I

    array-length v1, v1

    if-ge v12, v1, :cond_4

    .line 416
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->COLOR_MATRIX_RES:[I

    aget v8, v1, v12

    .line 417
    .local v8, color_res:I
    const/high16 v1, 0xff

    and-int v1, v1, p1

    shr-int/lit8 v2, v1, 0x10

    const v1, 0xff00

    and-int v1, v1, p1

    shr-int/lit8 v3, v1, 0x8

    move/from16 v0, p1

    and-int/lit16 v4, v0, 0xff

    const/high16 v1, 0xff

    and-int/2addr v1, v8

    shr-int/lit8 v5, v1, 0x10

    const v1, 0xff00

    and-int/2addr v1, v8

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v7, v8, 0xff

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/util/calendar/HtcCalendarManager;->compareColor(IIIIII)D

    move-result-wide v14

    .line 419
    .local v14, temp_diff:D
    const-wide/16 v1, 0x0

    cmpl-double v1, v9, v1

    if-eqz v1, :cond_2

    cmpg-double v1, v14, v9

    if-gez v1, :cond_3

    .line 420
    :cond_2
    move-wide v9, v14

    .line 421
    move v13, v8

    .line 415
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 424
    .end local v8           #color_res:I
    .end local v14           #temp_diff:D
    :cond_4
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public importCalendar(Landroid/content/ContentResolver;JLjava/lang/String;)I
    .locals 17
    .parameter "cr"
    .parameter "calendar_id"
    .parameter "vCalString"

    .prologue
    .line 661
    new-instance v13, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>()V

    .line 662
    .local v13, cal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->parseVCalendar(Ljava/lang/String;)Z

    move-result v15

    .line 664
    .local v15, isPass:Z
    if-nez v15, :cond_0

    const/4 v1, 0x0

    .line 674
    :goto_0
    return v1

    .line 666
    :cond_0
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventsCV()Ljava/util/ArrayList;

    move-result-object v5

    .line 667
    .local v5, multiEventsCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiToDoCV()Ljava/util/ArrayList;

    move-result-object v11

    .line 668
    .local v11, multiToDoCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventAlarmsCV()Ljava/util/ArrayList;

    move-result-object v6

    .line 669
    .local v6, multiEventsAlarmCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiToDoAlarmsCV()Ljava/util/ArrayList;

    move-result-object v12

    .local v12, multiToDoAlarmCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 671
    invoke-direct/range {v1 .. v6}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v14

    .local v14, evCal:I
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    .line 672
    invoke-direct/range {v7 .. v12}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v16

    .line 674
    .local v16, todoCal:I
    add-int v1, v14, v16

    goto :goto_0
.end method

.method public importCalendarOnBackground(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/os/Handler;Landroid/database/Cursor;I)I
    .locals 13
    .parameter "cr"
    .parameter "calendar_id"
    .parameter "vCalString"
    .parameter "progressHandler"
    .parameter "existEvents"
    .parameter "restoreType"

    .prologue
    .line 760
    new-instance v10, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>()V

    .line 761
    .local v10, cal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->parseVCalendar(Ljava/lang/String;)Z

    move-result v12

    .line 763
    .local v12, isPass:Z
    if-nez v12, :cond_0

    .line 764
    const/4 v11, 0x0

    .line 771
    :goto_0
    return v11

    .line 766
    :cond_0
    invoke-virtual {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventsCV()Ljava/util/ArrayList;

    move-result-object v5

    .line 767
    .local v5, multiEventsCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventAlarmsCV()Ljava/util/ArrayList;

    move-result-object v6

    .local v6, multiEventsAlarmCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 769
    invoke-direct/range {v1 .. v9}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendarOnBackground(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Handler;Landroid/database/Cursor;I)I

    move-result v11

    .line 771
    .local v11, evCal:I
    goto :goto_0
.end method

.method public isEventExist(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->isEventExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public setAssociation(JLjava/lang/String;Z)Landroid/net/Uri;
    .locals 1
    .parameter "noteId"
    .parameter "eventUri"
    .parameter "isSet"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/util/calendar/notes/NotesHelper;->setAssociation(Landroid/content/Context;JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public uniEventToEventUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "uniEvent"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
