.class public Lcom/sec/android/visualeffect/watercolor/WaterColorView;
.super Landroid/opengl/GLSurfaceView;
.source "WaterColorView.java"


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

.field private mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneMode"    # I
    .param p3, "qualityLevel"    # I

    .prologue
    const/16 v7, 0x8

    .line 41
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->DBG:Z

    .line 34
    const-string v0, "WaterColor_WaterColorView"

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->TAG:Ljava/lang/String;

    .line 43
    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "WaterColorView Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-direct {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    .line 48
    new-instance v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    move-object v2, p0

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;ILcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    .line 49
    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->setValueOfDVFS()V

    .line 51
    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 52
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 53
    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v1, v7

    move v2, v7

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 55
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 59
    :goto_4f
    return-void

    .line 57
    :cond_50
    const-string v0, "WaterEffect"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method private detectOpenGLES20()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 63
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 64
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    if-eqz v1, :cond_18

    .line 65
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_18

    const/4 v2, 0x1

    .line 67
    :cond_18
    return v2
.end method

.method private setValueOfDVFS()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    const-string v1, "1574400"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "389000000"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->setValueOfDVFS(ZIZI)V

    .line 77
    return-void
.end method


# virtual methods
.method public changeBackground(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "mBG"    # Landroid/graphics/Bitmap;

    .prologue
    .line 91
    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "changeBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->changeBackground(Landroid/graphics/Bitmap;)V

    .line 94
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_16

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 98
    :cond_16
    return-void
.end method

.method public cleanUp()V
    .registers 3

    .prologue
    .line 147
    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cleanUp()V

    .line 149
    return-void
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    const-string v0, "WaterColor_WaterColorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHoverEvent event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_26

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 132
    :cond_26
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    const-string v0, "WaterColor_WaterColorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEvent event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_26

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 123
    :cond_26
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 137
    const-string v0, "WaterColor_WaterColorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEventForPatternLock event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_26

    .line 140
    invoke-virtual {p0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 142
    :cond_26
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->onTouchEventForPatternLock(Landroid/view/MotionEvent;)V

    .line 143
    return v3
.end method

.method public onConfigurationChanged()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->onConfigurationChanged()V

    .line 103
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 175
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 176
    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->destroyed()V

    .line 178
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 167
    if-nez p1, :cond_5

    .line 168
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    .line 170
    :cond_5
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 157
    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->reset()V

    .line 159
    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "requestRender()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 107
    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->screenTurnedOn()V

    .line 109
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "mBG"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->setBackground(Landroid/graphics/Bitmap;)V

    .line 88
    return-void
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "mask1"    # Landroid/graphics/Bitmap;
    .param p2, "mask2"    # Landroid/graphics/Bitmap;
    .param p3, "mask3"    # Landroid/graphics/Bitmap;
    .param p4, "tube"    # Landroid/graphics/Bitmap;
    .param p5, "noise"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->setResourcesBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 82
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 152
    const-string v0, "WaterColor_WaterColorView"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->show()V

    .line 154
    return-void
.end method

.method public unlockEffect()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->mRenderer:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->unlockEffect()V

    .line 114
    return-void
.end method
