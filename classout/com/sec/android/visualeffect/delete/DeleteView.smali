.class public Lcom/sec/android/visualeffect/delete/DeleteView;
.super Landroid/view/TextureView;
.source "DeleteView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;,
        Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;
    }
.end annotation


# static fields
.field private static final ANI_END:I = 0x2

.field private static final CRUMPLE_END:I = 0x3

.field private static final MOVE_END:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final THREAD_READY:I = 0x5

.field private static final THREAD_STOP:I = 0x6

.field private static final VIEW_PREV_READY:I = 0x7

.field private static final VIEW_READY:I = 0x1

.field private static isBitmapSetStart:Z

.field private static mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

.field static mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

.field private static mMsgDelayedMillisec:J


# instance fields
.field private final MIN_MOVE_VALUE:F

.field private mCrumpleDuration:F

.field private mCrumpleRatio:F

.field private mDropDuration:F

.field private mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mView:Lcom/sec/android/visualeffect/delete/DeleteView;

.field private mVisibility:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 20
    sput-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    .line 21
    const-string v0, "DeleteView"

    sput-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/visualeffect/delete/DeleteView;->isBitmapSetStart:Z

    .line 31
    sput-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    .line 32
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mMsgDelayedMillisec:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 24
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mDropDuration:F

    .line 25
    const v0, 0x3e99999a

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleRatio:F

    .line 26
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleDuration:F

    .line 27
    const/high16 v0, 0x43160000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->MIN_MOVE_VALUE:F

    .line 46
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mDropDuration:F

    .line 25
    const v0, 0x3e99999a

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleRatio:F

    .line 26
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleDuration:F

    .line 27
    const/high16 v0, 0x43160000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->MIN_MOVE_VALUE:F

    .line 52
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mDropDuration:F

    .line 25
    const v0, 0x3e99999a

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleRatio:F

    .line 26
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleDuration:F

    .line 27
    const/high16 v0, 0x43160000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->MIN_MOVE_VALUE:F

    .line 58
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->init()V

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/delete/DeleteView;)Lcom/sec/android/visualeffect/delete/RenderThread;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/delete/DeleteView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/delete/DeleteView;)Lcom/sec/android/visualeffect/delete/DeleteView;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/delete/DeleteView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mView:Lcom/sec/android/visualeffect/delete/DeleteView;

    return-object v0
.end method

.method public static callbackFromNative(I)V
    .registers 5
    .param p0, "v"    # I

    .prologue
    .line 309
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    if-nez v0, :cond_c

    .line 311
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "CrumplingEventListener not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_b
    :goto_b
    return-void

    .line 314
    :cond_c
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    if-nez v0, :cond_18

    .line 315
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "callbackFromNative mCallBackHandler null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 319
    :cond_18
    packed-switch p0, :pswitch_data_6c

    goto :goto_b

    .line 322
    :pswitch_1c
    sget-boolean v0, Lcom/sec/android/visualeffect/delete/DeleteView;->isBitmapSetStart:Z

    if-eqz v0, :cond_b

    .line 323
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mMsgDelayedMillisec:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/visualeffect/delete/DeleteView;->isBitmapSetStart:Z

    goto :goto_b

    .line 329
    :pswitch_3e
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mMsgDelayedMillisec:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 332
    :pswitch_4d
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mMsgDelayedMillisec:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 335
    :pswitch_5c
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mMsgDelayedMillisec:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 319
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_3e
        :pswitch_4d
        :pswitch_5c
    .end packed-switch
.end method

.method private deinit()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-eqz v0, :cond_c

    .line 93
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/delete/RenderThread;->finish()V

    .line 94
    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    .line 96
    :cond_c
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    if-eqz v0, :cond_3c

    .line 97
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    sput-object v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    .line 107
    :cond_3c
    invoke-static {}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteDestroy()V

    .line 108
    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "init %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    if-eqz v0, :cond_18

    .line 87
    :goto_17
    return-void

    .line 66
    :cond_18
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "version 2014.1.08"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;-><init>(Lcom/sec/android/visualeffect/delete/DeleteView;)V

    sput-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    .line 76
    iput-object p0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mView:Lcom/sec/android/visualeffect/delete/DeleteView;

    .line 77
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 82
    invoke-static {}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteNewLib()V

    .line 86
    invoke-virtual {p0, v4}, Landroid/view/TextureView;->setOpaque(Z)V

    goto :goto_17
.end method


# virtual methods
.method public initModel(IIFFLandroid/graphics/Bitmap;IIFFZI)V
    .registers 30
    .param p1, "startPosX"    # I
    .param p2, "startPosY"    # I
    .param p3, "pageWidth"    # F
    .param p4, "pageHeight"    # F
    .param p5, "front"    # Landroid/graphics/Bitmap;
    .param p6, "docX"    # I
    .param p7, "docY"    # I
    .param p8, "docWidth"    # F
    .param p9, "docHeight"    # F
    .param p10, "isGesture"    # Z
    .param p11, "mode"    # I

    .prologue
    .line 243
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 245
    :cond_8
    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v6, "front recycled"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_f
    return-void

    .line 254
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-nez v1, :cond_1e

    .line 256
    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v6, "initModel thread null"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 260
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    .line 261
    .local v17, "dispWidth":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 263
    .local v16, "dispHeight":F
    move/from16 v0, p1

    int-to-float v1, v0

    div-float v2, v1, v17

    .line 264
    .local v2, "ratioX":F
    move/from16 v0, p2

    int-to-float v1, v0

    div-float v3, v1, v16

    .line 265
    .local v3, "ratioY":F
    div-float v4, p3, v17

    .line 266
    .local v4, "ratioWidth":F
    div-float v5, p4, v16

    .line 268
    .local v5, "ratioHeight":F
    sub-int v1, p1, p6

    int-to-float v1, v1

    div-float v9, v1, p8

    .line 269
    .local v9, "bitmapRatioX":F
    sub-int v1, p2, p7

    int-to-float v1, v1

    div-float v10, v1, p9

    .line 270
    .local v10, "bitmapRatioY":F
    div-float v11, p3, p8

    .line 271
    .local v11, "bitmapRatioW":F
    div-float v12, p4, p9

    .line 286
    .local v12, "bitmapRatioH":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p5

    move/from16 v13, p10

    move/from16 v15, p11

    invoke-virtual/range {v1 .. v15}, Lcom/sec/android/visualeffect/delete/RenderThread;->initModel(FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;FFFFFZII)V

    .line 289
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/visualeffect/delete/DeleteView;->isBitmapSetStart:Z

    goto :goto_f
.end method

.method public initView(FFFLandroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "bgColorR"    # F
    .param p2, "bgColorG"    # F
    .param p3, "bgColorB"    # F
    .param p4, "shadow"    # Landroid/graphics/Bitmap;

    .prologue
    .line 224
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 226
    :cond_8
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "shadow recycled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_f
    return-void

    .line 230
    :cond_10
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-nez v0, :cond_1c

    .line 232
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "initView thread null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 236
    :cond_1c
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/visualeffect/delete/RenderThread;->initView(FFFLandroid/graphics/Bitmap;)V

    goto :goto_f
.end method

.method public initView(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "shadow"    # Landroid/graphics/Bitmap;

    .prologue
    const v1, 0x3eb4b4b5

    .line 219
    const v0, 0x3eb2b2b3

    invoke-virtual {p0, v1, v0, v1, p1}, Lcom/sec/android/visualeffect/delete/DeleteView;->initView(FFFLandroid/graphics/Bitmap;)V

    .line 220
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 193
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 403
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 398
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 113
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    if-nez v0, :cond_30

    .line 116
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureAvailable init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->init()V

    .line 120
    :cond_30
    iput-object p1, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 121
    new-instance v0, Lcom/sec/android/visualeffect/delete/RenderThread;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mSurface:Landroid/graphics/SurfaceTexture;

    sget-object v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/visualeffect/delete/RenderThread;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    .line 122
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0, p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->setTextureView(Landroid/view/TextureView;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    invoke-interface {v0}, Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;->onViewCreated()V

    .line 143
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 182
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->deinit()V

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 7
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 147
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/delete/DeleteView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/visualeffect/delete/RenderThread;->onSurfaceChanged(II)V

    .line 151
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 199
    return-void
.end method

.method public setCrumplingEventListener(Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    .prologue
    .line 384
    sput-object p1, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    .line 385
    return-void
.end method

.method public setStartState()V
    .registers 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->onResume()V

    .line 407
    return-void
.end method

.method public setStopState()V
    .registers 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->onPause()V

    .line 411
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mVisibility:I

    .line 157
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mVisibility:I

    if-nez v0, :cond_31

    .line 161
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-eqz v0, :cond_2d

    .line 164
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/delete/RenderThread;->pauseNResume(Z)V

    .line 166
    :cond_2d
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_30
    :goto_30
    return-void

    .line 168
    :cond_31
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-eqz v0, :cond_30

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/delete/RenderThread;->pauseNResume(Z)V

    .line 172
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "view pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public startCrumplingAnimation(Z)V
    .registers 11
    .param p1, "isGesture"    # Z

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v4, 0x0

    .line 294
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-nez v0, :cond_f

    .line 296
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "startCrumplingAnimation thread null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_e
    return-void

    .line 303
    :cond_f
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    iget v1, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleDuration:F

    iget v3, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mDropDuration:F

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/visualeffect/delete/RenderThread;->startAnimation(FFFFFFFF)V

    goto :goto_e
.end method
