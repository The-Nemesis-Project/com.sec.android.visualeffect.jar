.class public Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;
.super Ljava/lang/Object;
.source "JniRippleInkRender.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-string v0, "RippleInkEffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native clearInkValue()V
.end method

.method public static native getClearInkValue()I
.end method

.method public static native initWaters([F[SIIIII)V
.end method

.method public static native move([F[FIIIIIIZFF)I
.end method

.method public static native onDrawFrame([F[F[SIII[FIIIIFFFFFFFFFF)V
.end method

.method public static native onFreeBGTextures()V
.end method

.method public static native onFreeInkMemory()V
.end method

.method public static native onFreeRippleMemory()V
.end method

.method public static native onFreeWaterTextures()V
.end method

.method public static native onInitGPU()V
.end method

.method public static native onInitSetting(IIZ)V
.end method

.method public static native onLoadBGTextures()V
.end method

.method public static native onLoadWaterTextures()V
.end method

.method public static native onTouch(IIIF)V
.end method

.method public static native ripple([FIIIIFFF)V
.end method

.method public static native transferBGBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public static native transferWaterBitmap(Landroid/graphics/Bitmap;)V
.end method
