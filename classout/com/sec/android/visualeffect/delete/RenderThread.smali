.class public Lcom/sec/android/visualeffect/delete/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "DeleteView RenderThread"


# instance fields
.field count:I

.field private isWait:Z

.field mBgColorB:F

.field mBgColorG:F

.field mBgColorR:F

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private volatile mFinished:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL;

.field mHeight:I

.field mIsGesture:Z

.field mLocalHeight:F

.field mLocalPosX:F

.field mLocalPosY:F

.field mLocalWidth:F

.field mMode:I

.field mModelHeight:F

.field mModelSet:Z

.field mModelWidth:F

.field mOrientation:I

.field mPauseTiming:F

.field mPosX:F

.field mPosY:F

.field mReset:Z

.field private final mSurface:Landroid/graphics/SurfaceTexture;

.field mSurfaceChanged:Z

.field private mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

.field mView:Landroid/view/TextureView;

.field mWidth:I


# direct methods
.method constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;)V
    .registers 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f000000

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    iput v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->count:I

    .line 40
    iput v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorR:F

    iput v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorG:F

    iput v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorB:F

    .line 44
    iput v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mMode:I

    .line 47
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurfaceChanged:Z

    .line 48
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mReset:Z

    .line 49
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelSet:Z

    .line 52
    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mView:Landroid/view/TextureView;

    .line 53
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->isWait:Z

    .line 54
    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    .line 58
    iput-object p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 59
    iput-object p0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    .line 60
    return-void
.end method

.method private checkCurrent()V
    .registers 6

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 219
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 220
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_51
    return-void
.end method

.method private checkEglError()V
    .registers 5

    .prologue
    .line 205
    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 206
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_26

    .line 207
    const-string v1, "DeleteView RenderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_26
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 275
    new-array v5, v4, [I

    .line 276
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 277
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->getConfig()[I

    move-result-object v2

    .line 278
    .local v2, "configSpec":[I
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_37
    aget v0, v5, v6

    if-lez v0, :cond_3e

    .line 282
    aget-object v0, v3, v6

    .line 284
    :goto_3d
    return-object v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method private finishGL()V
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 213
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 214
    return-void
.end method

.method private getConfig()[I
    .registers 2

    .prologue
    .line 288
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x10
        0x3026
        0x0
        0x3032
        0x1
        0x3031
        0x4
        0x3038
    .end array-data
.end method

.method private initGL()V
    .registers 8

    .prologue
    .line 227
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 229
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 230
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_3b

    .line 231
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglGetDisplay failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_3b
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 236
    .local v1, "version":[I
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 237
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglInitialize failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_6b
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 242
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_7d

    .line 243
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_7d
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/visualeffect/delete/RenderThread;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 248
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 250
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_d1

    .line 251
    :cond_a2
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 252
    .local v0, "error":I
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_b4

    .line 253
    const-string v2, "DeleteView RenderThread"

    const-string v3, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v0    # "error":I
    :goto_b3
    return-void

    .line 256
    .restart local v0    # "error":I
    :cond_b4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWindowSurface failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    .end local v0    # "error":I
    :cond_d1
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_104

    .line 261
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_104
    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL;

    goto :goto_b3
.end method

.method private runCodes()V
    .registers 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    monitor-enter v1

    .line 170
    :goto_3
    :try_start_3
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->isWait:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-eqz v0, :cond_16

    .line 172
    :try_start_7
    const-string v0, "DeleteView RenderThread"

    const-string v2, "thread wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_13} :catch_14
    .catchall {:try_start_7 .. :try_end_13} :catchall_1c

    goto :goto_3

    .line 174
    :catch_14
    move-exception v0

    goto :goto_3

    .line 177
    :cond_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1c

    .line 179
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    if-eqz v0, :cond_1f

    .line 202
    :cond_1b
    :goto_1b
    return-void

    .line 177
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 183
    :cond_1f
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->checkCurrent()V

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->onDrawFrame()V

    .line 187
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot swap buffers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_39
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->checkEglError()V

    .line 192
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    if-eqz v0, :cond_1b

    .line 193
    const-string v0, "DeleteView RenderThread"

    const-string v1, "thread finished but rendering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method


# virtual methods
.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 6
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 270
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    .line 271
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 270
    nop

    :array_e
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 136
    const-string v0, "DeleteView RenderThread"

    const-string v1, "destory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteDestroy()V

    .line 138
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 311
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->isWait:Z

    .line 315
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 317
    monitor-exit p0

    return-void

    .line 311
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initModel(FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;FFFFFZII)V
    .registers 16
    .param p1, "startPosX"    # F
    .param p2, "startPosY"    # F
    .param p3, "modelWidth"    # F
    .param p4, "modelHeight"    # F
    .param p5, "front"    # Landroid/graphics/Bitmap;
    .param p6, "back"    # Landroid/graphics/Bitmap;
    .param p7, "pauseTiming"    # F
    .param p8, "localPosX"    # F
    .param p9, "localPosY"    # F
    .param p10, "localWidth"    # F
    .param p11, "localHeight"    # F
    .param p12, "isGesture"    # Z
    .param p13, "orientation"    # I
    .param p14, "mode"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPosX:F

    .line 112
    iput p2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPosY:F

    .line 113
    iput p3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelWidth:F

    .line 114
    iput p4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelHeight:F

    .line 115
    iput p7, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPauseTiming:F

    .line 116
    iput p8, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalPosX:F

    .line 117
    iput p9, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalPosY:F

    .line 118
    iput p10, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalWidth:F

    .line 119
    iput p11, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalHeight:F

    .line 120
    iput-boolean p12, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mIsGesture:Z

    .line 121
    iput p13, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mOrientation:I

    .line 122
    iput p14, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mMode:I

    .line 124
    invoke-static {p5, p6}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteSetPaperTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mReset:Z

    .line 127
    return-void
.end method

.method public initView(FFFLandroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "shadow"    # Landroid/graphics/Bitmap;

    .prologue
    .line 101
    iput p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorR:F

    .line 102
    iput p2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorG:F

    .line 103
    iput p3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorB:F

    .line 105
    invoke-static {p4}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteSetShadowTexture(Landroid/graphics/Bitmap;)V

    .line 106
    return-void
.end method

.method public onDrawFrame()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 66
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurfaceChanged:Z

    if-ne v0, v12, :cond_15

    .line 68
    iget v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mHeight:I

    iget v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorR:F

    iget v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorG:F

    iget v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mBgColorB:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteInitView(IIFFF)V

    .line 69
    iput-boolean v13, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurfaceChanged:Z

    .line 71
    :cond_15
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mReset:Z

    if-ne v0, v12, :cond_38

    .line 73
    iget v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPosX:F

    iget v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPosY:F

    iget v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelWidth:F

    iget v3, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelHeight:F

    iget v4, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mPauseTiming:F

    iget v5, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalPosX:F

    iget v6, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalPosY:F

    iget v7, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalWidth:F

    iget v8, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mLocalHeight:F

    iget-boolean v9, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mIsGesture:Z

    iget v10, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mOrientation:I

    iget v11, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mMode:I

    invoke-static/range {v0 .. v11}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteInitModel(FFFFFFFFFZII)V

    .line 74
    iput-boolean v12, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelSet:Z

    .line 75
    iput-boolean v13, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mReset:Z

    .line 78
    :cond_38
    invoke-static {}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteStep()V

    .line 79
    return-void
.end method

.method public onSurfaceChanged(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mWidth:I

    .line 85
    iput p2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mHeight:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mSurfaceChanged:Z

    .line 90
    return-void
.end method

.method public onSurfaceCreated()V
    .registers 2

    .prologue
    .line 95
    invoke-static {}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteInitialize()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mModelSet:Z

    .line 97
    return-void
.end method

.method public declared-synchronized pauseNResume(Z)V
    .registers 5
    .param p1, "isWaitVal"    # Z

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->isWait:Z

    .line 305
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mThisThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 306
    const-string v0, "DeleteView RenderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread isWait = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->isWait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 309
    monitor-exit p0

    return-void

    .line 303
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 147
    const-string v0, "DeleteView RenderThread"

    const-string v1, "thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->initGL()V

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->onSurfaceCreated()V

    .line 150
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/visualeffect/delete/RenderThread;->onSurfaceChanged(II)V

    .line 152
    :goto_1c
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mFinished:Z

    if-nez v0, :cond_24

    .line 153
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->runCodes()V

    goto :goto_1c

    .line 156
    :cond_24
    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->finishGL()V

    .line 157
    const-string v0, "DeleteView RenderThread"

    const-string v1, "thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .registers 2
    .param p1, "view"    # Landroid/view/TextureView;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/visualeffect/delete/RenderThread;->mView:Landroid/view/TextureView;

    .line 143
    return-void
.end method

.method public startAnimation(FFFFFFFF)V
    .registers 9
    .param p1, "crumpleSpeed"    # F
    .param p2, "crumpleScale"    # F
    .param p3, "throwSpeed"    # F
    .param p4, "gravityX"    # F
    .param p5, "gravityY"    # F
    .param p6, "gravityZ"    # F
    .param p7, "vtxAnimFrom"    # F
    .param p8, "vtxAnimTo"    # F

    .prologue
    .line 131
    invoke-static/range {p1 .. p8}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteStartAnimation(FFFFFFFF)V

    .line 132
    return-void
.end method
