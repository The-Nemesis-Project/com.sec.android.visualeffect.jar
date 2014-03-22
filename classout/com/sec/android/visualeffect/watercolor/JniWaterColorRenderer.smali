.class public Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;
.super Ljava/lang/Object;
.source "JniWaterColorRenderer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mNativeJNI:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string v0, "WaterColorEffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    .line 10
    const-string v0, "WaterColorRenderer JNI"

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "WaterColorRenderer JNI"

    const-string v1, "JniWaterColorRenderer is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method private static native native_DeInit_JNI(I)V
.end method

.method private static native native_Draw_PhysicsEngine(I)V
.end method

.method private static native native_Init_JNI()I
.end method

.method private static native native_Init_PhysicsEngine(IIIII)V
.end method

.method private static native native_SetTexture(ILjava/lang/String;Landroid/graphics/Bitmap;Z)V
.end method

.method private static native native_isEmpty(I)I
.end method

.method private static native native_onCustomEvent(IIF)V
.end method

.method private static native native_onKeyEvent(II)V
.end method

.method private static native native_onSensorEvent(IIFFF)V
.end method

.method private static native native_onSurfaceChangedEvent(III)V
.end method

.method private static native native_onTouchEvent(IIII[I[I)V
.end method


# virtual methods
.method public DeInit_PhysicsEngineJNI()V
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_DeInit_JNI(I)V

    .line 30
    return-void
.end method

.method public Draw_PhysicsEngine()V
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_Draw_PhysicsEngine(I)V

    .line 45
    return-void
.end method

.method public Init_PhysicsEngine(IIII)V
    .registers 6
    .param p1, "tabletmode"    # I
    .param p2, "quality"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_Init_PhysicsEngine(IIIII)V

    .line 35
    return-void
.end method

.method public Init_PhysicsEngineJNI()V
    .registers 3

    .prologue
    .line 23
    const-string v0, "WaterColorRenderer JNI"

    const-string v1, "Init_PhysicsEngineJNI is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_Init_JNI()I

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    .line 25
    return-void
.end method

.method public SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .registers 7
    .param p1, "textureName"    # Ljava/lang/String;
    .param p2, "jbitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Z

    .prologue
    .line 59
    const-string v0, "WaterColorRenderer JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetBitmapData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_SetTexture(ILjava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 61
    return-void
.end method

.method public isEmpty()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_isEmpty(I)I

    move-result v0

    return v0
.end method

.method public onCustomEvent(IF)V
    .registers 4
    .param p1, "keyID"    # I
    .param p2, "value"    # F

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_onCustomEvent(IIF)V

    .line 71
    return-void
.end method

.method public onKeyEvent(I)V
    .registers 3
    .param p1, "keyID"    # I

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    invoke-static {v0, p1}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_onKeyEvent(II)V

    .line 66
    return-void
.end method

.method public onSensorEvent(IFFF)V
    .registers 6
    .param p1, "sensorType"    # I
    .param p2, "xValue"    # F
    .param p3, "yValue"    # F
    .param p4, "zValue"    # F

    .prologue
    .line 54
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_onSensorEvent(IIFFF)V

    .line 55
    return-void
.end method

.method public onSurfaceChangedEvent(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_onSurfaceChangedEvent(III)V

    .line 40
    return-void
.end method

.method public onTouchEvent(III[I[I)V
    .registers 12
    .param p1, "touchID"    # I
    .param p2, "touchNum"    # I
    .param p3, "eventType"    # I
    .param p4, "x"    # [I
    .param p5, "y"    # [I

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->mNativeJNI:I

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->native_onTouchEvent(IIII[I[I)V

    .line 50
    return-void
.end method
