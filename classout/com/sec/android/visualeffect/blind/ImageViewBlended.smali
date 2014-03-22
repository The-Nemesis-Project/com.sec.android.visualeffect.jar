.class public Lcom/sec/android/visualeffect/blind/ImageViewBlended;
.super Landroid/widget/ImageView;
.source "ImageViewBlended.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    .line 23
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xfermode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    .line 23
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 31
    iput-object p2, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    .line 23
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    .line 23
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 46
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 64
    :cond_16
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mRect:Landroid/graphics/Rect;

    .line 65
    return-void
.end method

.method public setImageResource(I)V
    .registers 6
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_20

    .line 54
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 55
    :cond_20
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->mRect:Landroid/graphics/Rect;

    .line 56
    return-void
.end method
