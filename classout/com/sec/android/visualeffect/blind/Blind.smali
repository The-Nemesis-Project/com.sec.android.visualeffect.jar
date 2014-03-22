.class public Lcom/sec/android/visualeffect/blind/Blind;
.super Landroid/widget/ImageView;
.source "Blind.java"


# instance fields
.field private blindWidth:I

.field private blindX:I

.field private midPoint:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pieceBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "blindX"    # I
    .param p4, "blindWidth"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    iput p3, p0, Lcom/sec/android/visualeffect/blind/Blind;->blindX:I

    .line 16
    iput p4, p0, Lcom/sec/android/visualeffect/blind/Blind;->blindWidth:I

    .line 17
    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/blind/Blind;->midPoint:F

    .line 18
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 19
    return-void
.end method


# virtual methods
.method public changeBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    return-void
.end method

.method public getBlindWidth()I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/android/visualeffect/blind/Blind;->blindWidth:I

    return v0
.end method

.method public getBlindX()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/visualeffect/blind/Blind;->blindX:I

    return v0
.end method

.method public getMidPoint()F
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/visualeffect/blind/Blind;->midPoint:F

    return v0
.end method
