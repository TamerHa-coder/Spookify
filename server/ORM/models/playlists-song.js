'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Playlists_song extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      this.belongsTo(models.Song, {
        foreignKey: 'songId'
      });
      this.belongsTo(models.Playlist, {
        foreignKey: 'playlistId'
      });
    }
  };
  Playlists_song.init({
    playlistId:{
      field:"playlist_id",
      type:DataTypes.INTEGER
    },
    songId:{
      field:"song_id",
      type:DataTypes.INTEGER
    }
  }, {
    sequelize,
    paranoid: true,
    modelName: 'Playlists_song',
  });
  return Playlists_song;
};