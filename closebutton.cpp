#include "closebutton.h"

CloseButton::CloseButton(QObject *parent)
    : QAbstractItemModel(parent)
{
}

QVariant CloseButton::headerData(int section, Qt::Orientation orientation, int role) const
{
    // FIXME: Implement me!
}

QModelIndex CloseButton::index(int row, int column, const QModelIndex &parent) const
{
    // FIXME: Implement me!
}

QModelIndex CloseButton::parent(const QModelIndex &index) const
{
    // FIXME: Implement me!
}

int CloseButton::rowCount(const QModelIndex &parent) const
{
    if (!parent.isValid())
        return 0;

    // FIXME: Implement me!
}

int CloseButton::columnCount(const QModelIndex &parent) const
{
    if (!parent.isValid())
        return 0;

    // FIXME: Implement me!
}

QVariant CloseButton::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    // FIXME: Implement me!
    return QVariant();
}
