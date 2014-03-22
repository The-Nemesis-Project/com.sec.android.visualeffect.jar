.class public Lcom/sec/android/visualeffect/rippleink/RippleInkView;
.super Landroid/opengl/GLSurfaceView;
.source "RippleInkView.java"


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneMode"    # I
    .param p3, "windowWidth"    # I
    .param p4, "windowHeight"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 41
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->DBG:Z

    .line 36
    const-string v0, "RippleInkView"

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->TAG:Ljava/lang/String;

    .line 43
    const-string v0, "RippleInkView"

    const-string v1, "RippleInkView Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;III)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .line 47
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->setValueOfDVFS()V

    .line 49
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 51
    const/16 v5, 0x10

    move-object v0, p0

    move v1, v7

    move v2, v7

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 53
    invoke-virtual {p0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 54
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 58
    :goto_49
    return-void

    .line 56
    :cond_4a
    const-string v0, "RippleInkView"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private detectOpenGLES20()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 62
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 63
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    if-eqz v1, :cond_18

    .line 64
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_18

    const/4 v2, 0x1

    .line 66
    :cond_18
    return v2
.end method

.method private setValueOfDVFS()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    const-string v1, "1574400"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "389000000"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setValueOfDVFS(ZIZI)V

    .line 81
    return-void
.end method


# virtual methods
.method public changeBackground(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "mBG"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->changeBackground(Landroid/graphics/Bitmap;)V

    .line 96
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_f

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 100
    :cond_f
    return-void
.end method

.method public cleanUp()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cleanUp()V

    .line 132
    return-void
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->onConfigurationChanged()V

    .line 124
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 171
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 172
    const-string v0, "RippleInkView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->destroyed()V

    .line 174
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 163
    if-nez p1, :cond_5

    .line 164
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    .line 166
    :cond_5
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->reset()V

    .line 144
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 145
    return-void
.end method

.method public screenTurnedOn()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->screenTurnedOn()V

    .line 149
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "mBG"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setBackground(Landroid/graphics/Bitmap;)V

    .line 91
    return-void
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setResourcesBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    return-void
.end method

.method public setRippleConfiguration(IIFFFFIIIIFFFFI)V
    .registers 33
    .param p1, "NUM_DETAILS_WIDTH"    # I
    .param p2, "NUM_DETAILS_HEIGHT"    # I
    .param p3, "intensityForLandscape"    # F
    .param p4, "intensityForPortrait"    # F
    .param p5, "translateZForPortrait"    # F
    .param p6, "translateZForLandscape"    # F
    .param p7, "spanXForLandscape"    # I
    .param p8, "spanYForLandscape"    # I
    .param p9, "spanXForPortrait"    # I
    .param p10, "spanYForPortrait"    # I
    .param p11, "XRatioForLandscape"    # F
    .param p12, "YRatioForLandscape"    # F
    .param p13, "XRatioForPortrait"    # F
    .param p14, "YRatioForPortrait"    # F
    .param p15, "rippleDragThreshold"    # I

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-virtual/range {v1 .. v16}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRippleConfiguration(IIFFFFIIIIFFFFI)V

    .line 119
    return-void
.end method

.method public setValueOfInk(Z)V
    .registers 3
    .param p1, "config_isWaterInkEnabled"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setValueOfInk(Z)V

    .line 73
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->show()V

    .line 139
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 140
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 5
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->mRenderer:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 158
    return-void
.end method
